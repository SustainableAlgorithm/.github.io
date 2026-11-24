# Health Club SQL — Submitted Results (Selected)

**Kathleen Kagan · ACO 320 · Fall 2021 · WinRDBI**

Transcribed from the supplied `KaganKathleen_sqlResults.pdf`. These are the results shown in the submitted export; they have not been independently rerun.

## Query 1 — Classes not attended by members over age 50

Four rows:

| Class | Description |
|---|---|
| Aerobics | Bending for the beat |
| Karate | Kicks and picks |
| Kungfu | Chinese self defense martial art |
| Yoga | Learn to release the mind |

## Query 2 — Members and monthly fees by account

| Account | Address | Phone | Members | Total monthly fee |
|---|---|---|---:|---:|
| A103 | 103 East Fig Ave | 480-445-3211 | 3 | 1,140 |
| A102 | 102 East Pine Dr | 480-445-0987 | 2 | 150 |
| A104 | 104 West Apple Ln | 480-334-0098 | 1 | 40 |
| A105 | 105 North Apple Rd | 480-453-4322 | 1 | 20 |
| A101 | 101 East Apple St | 480-436-0297 | 1 | 20 |

## Query 3 — Highest three-month personal-training fee

The maximum fee shown is **400**. Two instructors are listed:

| Instructor ID | First name | Last name | Maximum fee |
|---|---|---|---:|
| I107 | Instructor7First | Instructor7Last | 400 |
| I102 | Instructor2First | Instructor2Last | 400 |

## Query 4 — Instructors with contracts across more than two accounts

| Instructor ID | Last name | First name | Number of accounts |
|---|---|---|---:|
| I104 | Instructor4Last | Instructor4First | 4 |
| I107 | Instructor7Last | Instructor7First | 3 |
| I105 | Instructor5Last | Instructor5First | 3 |
| I103 | Instructor3Last | Instructor3First | 3 |

## Query 5 — Attendance by class

The supplied export shows the intermediate `countAttendance` and `maxAttendance` relations:

| Class ID | Attendance count |
|---|---:|
| C101 | 3 |
| C102 | 5 |
| C103 | 2 |
| C104 | 3 |
| C105 | 3 |
| C106 | 1 |

The maximum attendance count shown is **5**. The supplied export does not include the final `query5` result table.
