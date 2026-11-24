% Kathleen Kagan
% ACO 240 - Spring 2021
% Prolog Programming Assignment

flights_date_route(Date, O_A_C, D_A_C, NumberOfFlights, SortedFlightTuples) :-
    findall(flight(Date, A_C, F_N, O_A_C, D_A_C, S_D, D_T, D_D, S_A, A_T, A_D), flight(Date, A_C, F_N, O_A_C, D_A_C, S_D, D_T, D_D, S_A, A_T, A_D), Flights),
    length(Flights, NumberOfFlights),
    sort(6, @=<, Flights, SortedFlightTuples).


airline_routes(Airline_Code, Airline_Name, Routes) :-
    airline(Airline_Code, Airline_Name),
    findall(route(O_A_C, D_A_C), flight(_Date, Airline_Code, _F_N, O_A_C, D_A_C, _S_D, _D_T, _D_D, _S_A, _A_T, _A_D), Flights),
    list_to_set(Flights, Set),
    sort(1, @=<, Set, Routes).



longest_date_delay(Date, FlightLongestArrival, FlightLongestDeparture) :-
    findall(Arrival_Delay, flight(Date, A_C, Flight_Num, O_A_C, D_A_C, S_D, D_T, D_D, S_A, A_T, Arrival_Delay), ArrivalDelayList),
    max_list(ArrivalDelayList, LongestArrival),
    findall(flight(Date, A_C, F_N, O_A_C, D_A_C, S_D, D_T, D_D, S_A, A_T, LongestArrival), flight(Date, A_C, F_N, O_A_C, D_A_C, S_D, D_T, D_D, S_A, A_T, LongestArrival), FlightArrival),
    arg(1, FlightArrival, FlightLongestArrival),
    findall(Depart_Delay, flight(Date, A_C, Flight_Num, O_A_C, D_A_C, S_D, D_T, Depart_Delay, S_A, A_T, A_D), DepartDelayList),
    max_list(DepartDelayList, LongestDeparture),
    findall(flight(Date, A_C, F_N, O_A_C, D_A_C, S_D, D_T, LongestDeparture, S_A, A_T, A_D), flight(Date, A_C, F_N, O_A_C, D_A_C, S_D, D_T, LongestDeparture, S_A, A_T, A_D), FlightDeparture),
    arg(1, FlightDeparture, FlightLongestDeparture).
    

airport_delays(Airport_Code, Airport_Name, NumberDepartureDelays, NumberArrivalDelays) :-
    airport(Airport_Code, Airport_Name, _C, _S),
    findall(Departure_Delay, (flight(Date, A_C, F_N, Airport_Code, _D_A_C, S_D, D_T, Departure_Delay, S_A, A_T, _A_D), Departure_Delay > 15), DepartDelay),
    length(DepartDelay, NumberDepartureDelays),
    findall(Arrival_Delay, (flight(Date, A_C, F_N, _O_A_C, Airport_Code, S_D, D_T, _D_D, S_A, A_T, Arrival_Delay), Arrival_Delay > 15), ArriveDelay),
    length(ArriveDelay, NumberArrivalDelays).
	


airline_date_ontime_stats(Airline_Code, Date, Airline_Name, NumberOfFlights, Percentage) :-
    airline(Airline_Code, Airline_Name),
    findall(flight(Date, Airline_Code, F_N, O_A_C, D_A_C, S_D, D_T, D_D, S_A, A_T, A_D), flight(Date, Airline_Code, F_N, O_A_C, D_A_C, S_D, D_T, D_D, S_A, A_T, A_D), Flights),
    length(Flights, NumberOfFlights),
    findall(Arrival_Delay, (flight(Date, Airline_Code, F_N, O_A_C, D_A_C, S_D, D_T, D_D, S_A, A_T, Arrival_Delay), Arrival_Delay < 15), ArriveDelay),
    length(ArriveDelay, NumberArrivalDelays),
    Percentage is ((NumberArrivalDelays / NumberOfFlights) * 100).
