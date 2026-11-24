% ACO 240 Spring 2021 Erlang Programming Assignment
% Arizona State University West - April 4, 2021
% Reads flight data from a CSV file and builds airline, airport, and date maps.
-module(main).
-export([start/0]).
-define(FILENAME, "flights_info.csv").

-define(DATE, 1).
-define(AIRLINE_CODE, 2).
-define(AIRLINE_NAME, 3).
-define(FLIGHT_NUM, 4).
-define(ORIGIN_AIRPORT, 5).
-define(ORIGIN_NAME, 6).
-define(ORIGIN_CITY, 7).
-define(ORIGIN_STATE, 8).
-define(DEST_AIRPORT, 9).
-define(DEST_NAME, 10).
-define(DEST_CITY, 11).
-define(DEST_STATE, 12).
-define(DEPARTURE_SCHEDULED, 13).
-define(DEPARTURE_TIME, 14).
-define(DEPARTURE_DELAY, 15).
-define(ARRIVAL_SCHEDULED, 16).
-define(ARRIVAL_TIME, 17).
-define(ARRIVAL_DELAY, 18).

start() -> flights_file(?FILENAME).

flights_file(Filename) ->
    case file:open(Filename, read) of
        {ok, IoDevice} ->
            {ok, Airline_Map, Airport_Map, Date_Map} =
                process_data(IoDevice, #{}, #{}, #{}),
            {ok, Test_Case} = io:read(""),
            io:format("test case ~B~n", [Test_Case]),
            test(Test_Case, Airline_Map, Airport_Map, Date_Map);
        {error, Reason} ->
            io:format("~s~n", [Reason])
    end.

% Process CSV records recursively and build the three aggregation maps.
process_data(IoDevice, Airline_Map, Airport_Map, Date_Map) ->
    case io:get_line(IoDevice, "") of
        eof ->
            file:close(IoDevice),
            {ok, Airline_Map, Airport_Map, Date_Map};
        {error, Reason} ->
            file:close(IoDevice),
            throw(Reason);
        Line ->
            Data = case re:run(
                Line, "\"[^\"]*\"|[^,]+",
                [{capture, first, list}, global]
            ) of
                {match, Captures} -> [hd(C) || C <- Captures];
                nomatch -> []
            end,

            Date = lists:nth(?DATE, Data),
            AirlineCode = lists:nth(?AIRLINE_CODE, Data),
            AirlineName = lists:nth(?AIRLINE_NAME, Data),
            {FlightNum, _} = string:to_integer(lists:nth(?FLIGHT_NUM, Data)),
            OriginAirport = lists:nth(?ORIGIN_AIRPORT, Data),
            OriginName = lists:nth(?ORIGIN_NAME, Data),
            OriginCity = lists:nth(?ORIGIN_CITY, Data),
            OriginState = lists:nth(?ORIGIN_STATE, Data),
            DestAirport = lists:nth(?DEST_AIRPORT, Data),
            DestName = lists:nth(?DEST_NAME, Data),
            DestCity = lists:nth(?DEST_CITY, Data),
            DestState = lists:nth(?DEST_STATE, Data),
            {DepartSched, _} = string:to_integer(lists:nth(?DEPARTURE_SCHEDULED, Data)),
            {DepartTime, _} = string:to_integer(lists:nth(?DEPARTURE_TIME, Data)),
            {DepartDelay, _} = string:to_integer(lists:nth(?DEPARTURE_DELAY, Data)),
            {ArriveSched, _} = string:to_integer(lists:nth(?ARRIVAL_SCHEDULED, Data)),
            {ArriveTime, _} = string:to_integer(lists:nth(?ARRIVAL_TIME, Data)),
            {ArriveDelay, _} = string:to_integer(lists:nth(?ARRIVAL_DELAY, Data)),

            FlightTuple = {
                flight, Date, AirlineCode, FlightNum,
                OriginAirport, DestAirport,
                DepartSched, DepartTime, DepartDelay,
                ArriveSched, ArriveTime, ArriveDelay
            },

            % Add flight to the date map.
            DateHolder = case maps:is_key(Date, Date_Map) of
                true -> maps:get(Date, Date_Map);
                false -> []
            end,
            UpdatedDateMap = maps:put(
                Date, lists:append(DateHolder, [FlightTuple]), Date_Map
            ),

            % Add flight to the airline map.
            AirlineTuple = {airline, AirlineCode, AirlineName, []},
            AirlineHolder = case maps:is_key(AirlineCode, Airline_Map) of
                true -> maps:get(AirlineCode, Airline_Map);
                false -> AirlineTuple
            end,
            AirlineFlights = element(4, AirlineHolder),
            NewAirlineFlights = lists:append(AirlineFlights, [FlightTuple]),
            UpdatedAirlineMap = maps:put(
                AirlineCode,
                {airline, AirlineCode, AirlineName, NewAirlineFlights},
                Airline_Map
            ),

            % Add flight to the origin airport's departures.
            Origin = {
                airport, OriginAirport, OriginName, OriginCity, OriginState, [], []
            },
            OriginHolder = case maps:is_key(OriginAirport, Airport_Map) of
                true -> maps:get(OriginAirport, Airport_Map);
                false -> Origin
            end,
            OriginFlights = element(6, OriginHolder),
            NewOriginFlights = lists:append(OriginFlights, [FlightTuple]),
            OriginDestinationFlights = element(7, OriginHolder),
            UpdatedOriginMap = maps:put(
                OriginAirport,
                {
                    airport, OriginAirport, OriginName, OriginCity, OriginState,
                    NewOriginFlights, OriginDestinationFlights
                },
                Airport_Map
            ),

            % Add flight to the destination airport's arrivals.
            Dest = {
                airport, DestAirport, DestName, DestCity, DestState, [], []
            },
            DestHolder = case maps:is_key(DestAirport, UpdatedOriginMap) of
                true -> maps:get(DestAirport, UpdatedOriginMap);
                false -> Dest
            end,
            DestFlights = element(7, DestHolder),
            NewDestFlights = lists:append(DestFlights, [FlightTuple]),
            DestOriginFlights = element(6, DestHolder),
            UpdatedAirportMap = maps:put(
                DestAirport,
                {
                    airport, DestAirport, DestName, DestCity, DestState,
                    DestOriginFlights, NewDestFlights
                },
                UpdatedOriginMap
            ),

            process_data(
                IoDevice, UpdatedAirlineMap, UpdatedAirportMap, UpdatedDateMap
            )
    end.

% Query 1: find the flight with the maximum arrival delay for each date.
query1(Date_Map) ->
    DatesList = maps:keys(Date_Map),
    DateSort = lists:sort(DatesList),
    query1(DateSort, Date_Map).

query1([], _Date_Map) -> ok;
query1([Date | Tail], Date_Map) ->
    Flights = maps:get(Date, Date_Map),
    MaxList = lists:max([
        Delay || {_, _, _, _, _, _, _, _, _, _, _, Delay} <- Flights
    ]),
    MaxDelay = lists:nth(
        1,
        [Flight || Flight <- Flights, element(12, Flight) == MaxList]
    ),
    io:format("~s:~n", [Date]),
    io:format("~p~n", [MaxDelay]),
    query1(Tail, Date_Map).

% Query 2: report airport traffic and delays greater than 15 minutes.
query2(Airport_Map) ->
    CodeList = maps:values(Airport_Map),
    CodeSort = lists:sort(CodeList),
    query2(CodeSort, Airport_Map).

query2([], _Airport_Map) -> ok;
query2([
    {airport, Airport_Code, Airport_Name, City, State, OriginFlights, DestFlights}
    | Tail
], Airport_Map) ->
    io:format(
        "{~s, ~s, ~s, ~s, ~B, ~B}~n",
        [
            Airport_Code, Airport_Name, City, State,
            length(OriginFlights), length(DestFlights)
        ]
    ),
    OriginDelays = length([
        DDelay
        || {flight, _, _, _, _, _, _, _, DDelay, _, _, _} <- OriginFlights,
           DDelay > 15
    ]),
    DestDelays = length([
        ADelay
        || {flight, _, _, _, _, _, _, _, _, _, _, ADelay} <- DestFlights,
           ADelay > 15
    ]),
    io:format("origin delays: ~B~n", [OriginDelays]),
    io:format("departure delays: ~B~n", [DestDelays]),
    query2(Tail, Airport_Map).

% Test cases - retained from the assignment template.
test(1, Airline_Map, Airport_Map, Date_Map) ->
    testMaps(lists:sort(maps:values(Airline_Map))),
    testMaps(lists:sort(maps:values(Airport_Map))),
    testMaps(lists:sort(maps:keys(Date_Map)), Date_Map);
test(2, _, _, Date_Map) ->
    query1(Date_Map);
test(3, _, Airport_Map, _) ->
    query2(Airport_Map).

% Test case 1: print airline, airport, and date summaries.
testMaps([]) -> ok;
testMaps([{airline, Code, Name, Flights} | Tail]) ->
    io:format("{~s, ~s, ~B}~n", [Code, Name, length(Flights)]),
    testMaps(Tail);
testMaps([
    {airport, Code, Name, City, State, OriginFlights, DestFlights} | Tail
]) ->
    io:format(
        "{~s, ~s, ~s, ~s, ~B, ~B}~n",
        [Code, Name, City, State, length(OriginFlights), length(DestFlights)]
    ),
    testMaps(Tail).

testMaps([], _) -> ok;
testMaps([Date | Tail], Date_Map) ->
    Flights = maps:get(Date, Date_Map),
    io:format("~s: ~B~n", [Date, length(Flights)]),
    io:format("~p~n", [lists:nth(1, Flights)]),
    io:format("~p~n", [lists:nth(length(Flights), Flights)]),
    testMaps(Tail, Date_Map).
