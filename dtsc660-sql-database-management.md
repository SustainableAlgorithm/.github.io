# DTSC 660: Data and Database Management with SQL

This portfolio area demonstrates relational database design, PostgreSQL query writing, analytical aggregation, joins, data cleaning, and a Python-to-database workflow. It is based on the skill areas represented by seven course assignments, but uses independently written examples rather than reproducing graded submissions.

## Skills demonstrated

### Database design
A sample relational schema demonstrates primary keys, foreign keys, uniqueness and check constraints, plus indexes for common joins and time-based queries.

### Querying and exploration
PostgreSQL examples use SELECT, WHERE, ORDER BY, computed expressions, and NULL-safe arithmetic.

### Aggregation and analysis
A synthetic customer-sales example demonstrates filtering, GROUP BY, SUM, AVG, and ordering aggregate results.

### Joins and set operations
Synthetic depositor and borrower tables demonstrate INNER JOIN and LEFT JOIN behavior without including course datasets.

### Data cleaning
A Python/pandas example profiles missing values and duplicate rows, normalizes column names and text fields, and writes a cleaned CSV. Cleaning rules should always be validated against the source data dictionary.

### Python, PostgreSQL, and pandas
A connection template runs a read-only SELECT/WITH query, loads results into a DataFrame, and exports the result to CSV. Database credentials are supplied through an environment variable, never hard-coded.

## Tools

PostgreSQL · SQL · Python · pandas · SQLAlchemy · relational modeling · data quality · query results to DataFrame

## Privacy and reproducibility

The original course SQL submissions, datasets, screenshots, and database exports are not included in the public portfolio. Examples use synthetic rows or local user-supplied files. The working code remains private during review.

These are starter demonstrations. The SQL examples have not been tested against your course's original databases, and the Python database workflow requires a configured PostgreSQL instance. No claims are made about performance or data-quality improvements without a documented run.
