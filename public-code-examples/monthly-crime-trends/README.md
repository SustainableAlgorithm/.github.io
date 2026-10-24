# Reproducible Monthly Trend Analysis

A small, runnable Python example showing how to parse dates, validate rows, aggregate records by month, and test data transformations. It uses **synthetic example records only**—not Phoenix Police Department data or any university dataset.

## Run locally

```bash
python -m pip install -r requirements.txt
python monthly_trends.py
python -m pytest -q
```

The script prints a monthly summary. It doesn't download data or write files.

## What it demonstrates

- Explicit date parsing and handling of invalid/missing timestamps.
- Inclusive start-date filtering.
- Chronological monthly aggregation.
- Data-quality summary counts.
- Unit tests for edge cases.

## Limitations

The sample records are invented solely to demonstrate code behavior. They cannot support conclusions about real crime trends, rates, or public safety. A real analysis requires a documented source, a data dictionary, appropriate privacy review, and validation of the date and incident definitions.
