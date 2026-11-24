# Health Club Database Analysis — SQL

**Arizona State University · ACO 320 · Fall 2021**  
**Platform:** WinRDBI · **Assignment:** Health Club Enterprise SQL

An undergraduate SQL project using the Health Club relational database. The assignment required five analytical queries and corresponding reflection queries designed to help verify the results.

## Database schema

The assignment describes these relations:

- `clubAccount(acctNum, dateJoined, address, phone)`
- `member(mID, fName, lName, age, primary, monthlyFee, acctNum)`
- `trainer(mID, insID, startDate, duration, fee)`
- `instructor(insID, ifName, ilName)`
- `class(cID, cName, cDescription)`
- `classSchedule(cID, day, time, insID)`
- `attendance(mID, cID, day, time, classDate)`

## Analytical questions

1. Identify class types not attended by members over age 50.
2. Calculate member counts and total monthly fees for each club account.
3. Identify instructors charging the highest fee for a three-month personal-training contract.
4. Find instructors with personal-training contracts across more than two club accounts.
5. Identify the class type with the highest attendance.

Each question includes a reflection query; multi-part queries also use helper relations to calculate intermediate results.

## Files

- [`KaganKathleen_SQL.sql`](KaganKathleen_SQL.sql) — transcription of the submitted SQL and reflection queries.
- [`query-results.md`](query-results.md) — selected results transcribed from the submitted WinRDBI results PDF.

The original `.rdb` database file and course assignment PDFs are not included in this public repository. The README records the schema and scope without redistributing the course materials or database file.

## Techniques demonstrated

- Relational joins, including natural joins
- Subqueries and correlated subqueries
- `NOT EXISTS` and `NOT IN`
- Aggregation with `COUNT`, `SUM`, and `MAX`
- `GROUP BY` and `HAVING`
- `DISTINCT`, sorting, and output-column aliases
- Reflection queries for result verification
- Multi-step query construction using helper relations

## Submitted results (selected)

The accompanying results export records:

- Query 1: four class types — Aerobics, Karate, Kungfu, and Yoga.
- Query 2: five club accounts, ordered by total monthly fee; A103 has the highest total at 1,140.
- Query 3: instructors I107 and I102 tie for the maximum three-month fee of 400.
- Query 4: four instructors meet the more-than-two-accounts condition; I104 appears with four accounts.
- Query 5: the intermediate attendance calculation shows C102 with the highest attendance count of five. The provided results export does not show the final query5 result table.

These are transcribed from the supplied results PDF, not independently rerun against the WinRDBI database.

## Implementation and review notes

This project preserves the submitted coursework rather than silently changing its logic or WinRDBI-specific syntax. The original assignment asks for instructors in Query 3 to be ordered alphabetically by last name, while the submitted SQL orders by the maximum fee descending. The submitted Query 5 also uses an intermediate maximum relation and the final result is not visible in the supplied results export. These differences are documented rather than represented as corrected.

## Academic context

**Course:** ACO 320  
**Term:** Fall 2021  
**Platform:** WinRDBI  
**Assignment:** SQL — Health Club Enterprise
