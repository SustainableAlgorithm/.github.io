# Health Club Relational Algebra & SQL Reflection — Results

**Kathleen Kagan · ACO 320 · Fall 2021 · WinRDBI**

Transcribed from the supplied result exports. The relational-algebra and SQL-reflection outputs are kept separate because they are not the same queries.

## Relational-algebra results

| Query | Question (shortened) | Rows |
|---|---|---:|
| 1 | Members at least 35 who attended Yoga | 5 |
| 2 | Members who never contracted for six months | 4 |
| 3 | Accounts with only one member | 3 |
| 4 | Instructors with smallest three-month fee | 1 |
| 5 | Weekend class offerings | 4 |

### Query 1 — Members at least 35 who attended Yoga

| Member ID | Last name | First name | Age |
|---|---|---|---:|
| M102-1 | Christie | Sally | 50 |
| M102-2 | Christie | Yelena | 51 |
| M103-1 | Crowe | Russel | 55 |
| M103-2 | Crowe | Petunia | 45 |
| M104-1 | Perez | Tom | 35 |

### Query 2 — Never contracted for six months

| Member ID | Last name | First name |
|---|---|---|
| M101-1 | Christie | Agatha |
| M103-1 | Crowe | Russel |
| M103-2 | Crowe | Petunia |
| M104-1 | Perez | Tom |

### Query 3 — Accounts with one member

| Account | Date joined | Address | Phone |
|---|---|---|---|
| A103 | 2017-03-03 | 103 East Fig Ave | 480-445-3211 |
| A104 | 2017-04-04 | 104 West Apple Ln | 480-334-0098 |
| A105 | 2017-05-05 | 105 North Apple Rd | 480-453-4322 |

### Query 4 — Smallest three-month trainer fee

| Instructor ID | First name | Last name |
|---|---|---|
| I107 | Instructor7First | Instructor7Last |

### Query 5 — Weekend class offerings

| Class | Day | Time |
|---|---|---|
| Aerobics | 7-Sun | 12:00 |
| Yoga | 6-Sat | 08:00 |
| Pilates | 7-Sun | 09:00 |
| Karate | 6-Sat | 10:00 |

## SQL reflection results

The submitted SQL reflection file contains five exploratory queries. Their outputs are reproduced at a summary level here.

| Reflection query | Rows returned | Notable detail |
|---|---:|---|
| query1 | 48 | Class/member combinations across six class names |
| query2 | 20 | Member/trainer contract-duration rows |
| query3 | 8 | Account and primary-member indicators |
| query4 | 18 | Instructor IDs and fees |
| query5 | 12 | Class names and scheduled days, including weekdays and weekends |

The reflection SQL outputs are not the final answer sets for the five original relational-algebra questions. They are retained as submitted for transparency.
