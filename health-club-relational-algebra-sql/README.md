# Health Club Relational Algebra & SQL Reflection

**Arizona State University · ACO 320 · Fall 2021**  
**Submitted:** September 26, 2021  
**Tools:** WinRDBI · Relational Algebra · SQL

This undergraduate database assignment explored five questions about a Health Club relational database. The original work includes relational-algebra expressions, a separate SQL reflection exercise, and result exports from WinRDBI.

## Project questions

1. List club members at least 35 years old who attended a Yoga class.
2. Find club members who have never contracted personal trainer services for six months.
3. Identify club accounts with only one associated club member.
4. Find instructors who charged the smallest fee for a three-month training contract.
5. Identify classes offered on weekends.

## Files

- [`KaganKathleen.alg`](KaganKathleen.alg) — original relational-algebra expressions for the five questions.
- [`KaganKathleen.sql`](KaganKathleen.sql) — SQL reflection queries submitted with the assignment. These are reflection exercises, not a complete SQL implementation of the five relational-algebra queries.
- [`query-results.md`](query-results.md) — selected result counts and output values transcribed from the supplied WinRDBI exports.

## Concepts demonstrated

- Relational algebra: selection, projection, natural join, product, and set difference
- Self-joins using renamed copies of relations
- SQL natural joins and ordering
- Query reflection and result inspection
- Reasoning about membership, attendance, trainer contracts, and class schedules

## Selected submitted results

The relational-algebra results show:

- **Query 1:** 5 members met the age and Yoga attendance conditions.
- **Query 2:** 4 members had never contracted for six months of personal training.
- **Query 3:** 3 accounts were returned as having only one associated member.
- **Query 4:** Instructor I107 was returned for the smallest-fee question.
- **Query 5:** 4 weekend class offerings were returned.

The SQL reflection export shows different, broader result sets for its five reflection queries. Those outputs are recorded separately in `query-results.md`; they should not be mistaken for validated final answers to the original questions.

## Scope and limitations

This repository preserves the submitted coursework and its terminology. The SQL file is explicitly titled “Reflection in SQL” in the source and contains exploratory/reflection queries; it does not provide a full SQL solution for each question. The original Health Club database file is not included, so results have been transcribed from the supplied WinRDBI exports rather than rerun.

## Academic context

**Course:** ACO 320  
**Institution:** Arizona State University  
**Term:** Fall 2021  
**Assignment:** Relational Algebra with SQL Reflection
