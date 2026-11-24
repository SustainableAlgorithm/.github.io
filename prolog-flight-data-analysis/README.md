# Prolog Flight Data Analysis

**Arizona State University West · ACO 240 · Spring 2021**

An undergraduate Prolog programming assignment that models airline, airport, and flight information as a relational database of facts, then uses declarative queries to answer questions about routes, delays, and on-time performance.

## Project overview

The assignment uses the same flight dataset as the related Python and Erlang coursework, represented in Prolog as facts:

- `airline(Airline_Code, Airline_Name)`
- `airport(Airport_Code, Airport_Name, City, State)`
- `flight(Date, Airline_Code, Flight_Num, Origin_Airport_Code, Dest_Airport_Code, Scheduled_Departure, Departure_Time, Departure_Delay, Scheduled_Arrival, Arrival_Time, Arrival_Delay)`

Text values are represented as quoted atoms and numeric values as numbers.

## Queries implemented

The submitted program defines five predicates:

1. **`flights_date_route/5`** — gathers flight records and sorts them by scheduled departure time. The submitted implementation currently does not constrain the results by the supplied origin and destination arguments; see implementation notes below.
2. **`airline_routes/3`** — returns the airline name and unique routes flown, sorted by origin airport code.
3. **`longest_date_delay/3`** — identifies the flights with the longest arrival and departure delays for a given date.
4. **`airport_delays/4`** — counts departure delays from an airport and arrival delays into an airport, using a threshold greater than 15 minutes.
5. **`airline_date_ontime_stats/5`** — returns an airline's flight count for a date and calculates the percentage of flights with arrival delay below 15 minutes.

## Files

- [`KKaganFinalPrologCode.pl`](KKaganFinalPrologCode.pl) — submitted Prolog query implementation.
- [`flight_information.pl`](flight_information.pl) — relational database of airline, airport, and flight facts (3 airline facts, 6 airport facts, and 637 flight facts).

## Running with SWI-Prolog

Place both `.pl` files in the same directory, then start SWI-Prolog:

```sh
swipl -s flight_information.pl -s KKaganFinalPrologCode.pl
```

Example assignment queries:

```prolog
flights_date_route('2015-01-08', 'PHX', 'RNO', NumberOfFlights, SortedFlightTuples).
airline_routes('WN', Airline_Name, Routes).
longest_date_delay('2015-01-11', FlightLongestArrival, FlightLongestDeparture).
airport_delays('PHX', Airport_Name, NumberDepartureDelays, NumberArrivalDelays).
airline_date_ontime_stats('WN', '2015-01-11', Airline_Name, NumberOfFlights, Percentage).
```

## Implementation notes

This repository preserves the submitted coursework rather than silently rewriting it. A few details are important when reviewing or running it:

- In `flights_date_route/5`, the current `findall/3` goal uses the date but does not apply the supplied origin and destination airport arguments as filters.
- In `airline_date_ontime_stats/5`, the submitted predicate counts arrival delays strictly less than 15 minutes. The assignment describes on-time as within 15 minutes; the source's strict comparison is preserved.
- The program assumes that matching flight records exist for the date queried; the maximum-delay predicate uses `max_list/2` on the resulting delay list.

The assignment sheet specifies five required queries and provides sample calls for each. This page describes the submitted source as written and does not claim that every query was independently corrected or validated.

## Skills demonstrated

- Declarative and logic programming
- Relational representation of structured data
- Predicate design and unification
- `findall/3`, list processing, sorting, and deduplication
- Aggregation and arithmetic evaluation
- Pattern matching and Prolog terms
- Translating analytical questions into database queries

## Academic context

**Course:** ACO 240  
**Institution:** Arizona State University West  
**Term:** Spring 2021  
**Assignment:** Prolog Programming Assignment
