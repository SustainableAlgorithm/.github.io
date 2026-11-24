# Erlang Flight Data Analysis

**Arizona State University West · ACO 240 · April 4, 2021**

This undergraduate programming project uses Erlang to read flight records from a CSV file and organize them into maps for airline, airport, and date-based analysis.

## Project overview

The program processes flight records containing 18 fields, including flight date, airline, flight number, origin and destination airport information, scheduled and actual departure/arrival times, and delay values.

As each record is read, the program builds three maps:

- **Airline map:** groups flight tuples by airline code and retains the airline name and associated flights.
- **Airport map:** groups flights by airport, separately tracking originating and destination flights.
- **Date map:** groups flights by date.

## Queries

**Query 1 — Maximum arrival delay by date**

Sorts the dates and identifies the flight with the maximum arrival delay for each date.

**Query 2 — Airport activity and delays**

Reports each airport's origin and destination flight counts, then counts origin-flight departure delays and destination-flight arrival delays greater than 15 minutes.

## Erlang concepts demonstrated

- Recursive file processing with `io:get_line/2`
- CSV field extraction with regular expressions
- Maps for grouping and aggregating records
- Tuples to represent flights, airlines, and airports
- Pattern matching and guards
- List processing, sorting, and filtering
- Function recursion for report generation
- Command-line input and formatted output

## Files

- [`main.erl`](main.erl) — completed Erlang assignment implementation, based on the submitted project source.
- The original data file is named `flights_info.csv` in the program's filename macro. The course data file supplied with the project contains 637 records with 18 fields each. It is not included in this public source snapshot; place the authorized course data file beside `main.erl` before running.

## Running

With Erlang/OTP installed and the authorized CSV file in the same directory:

```sh
erlc main.erl
erl -noshell -s main start
```

The program prompts for a test case:
- Enter `1.` to print airline, airport, and date map summaries.
- Enter `2.` to run the maximum-arrival-delay-by-date query.
- Enter `3.` to run the airport activity and delay query.

The source expects the CSV filename `flights_info.csv`. The CSV parser in the submitted implementation is documented in the source comment as not handling empty fields; the supplied dataset has 18 fields per record. The code has been preserved as coursework rather than silently rewritten as a production-grade CSV parser.

## Academic context

This project is presented as undergraduate coursework completed at **Arizona State University West** for **ACO 240** on **April 4, 2021**. It demonstrates foundational functional programming and data aggregation in Erlang.
