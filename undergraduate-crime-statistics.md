# Undergraduate Crime Statistics: Phoenix Monthly Trends

**Python · pandas · Matplotlib · exploratory data analysis**

This project represents an early stage of my interest in crime-data analysis. The undergraduate notebook explored monthly Phoenix crime incident counts and helped motivate later work on crime statistics and forecasting.

## Method

The original notebook selected incident occurrence dates and UCR crime categories, removed rows with missing dates, filtered to records from May 2020 onward, aggregated incidents by month, and plotted monthly trends. It also included manually entered plotting arrays.

The independent portfolio implementation replaces those manual arrays with reproducible aggregation from a local CSV. It validates required columns, parses dates with explicit handling of invalid values, groups records chronologically by calendar month, creates a data-quality summary, and exports a chart and tidy CSV.

## Tools and skills

- Data loading and cleaning with pandas
- Date parsing and time-based aggregation
- Exploratory visualization with Matplotlib
- Data-quality checks and reproducible scripts
- Interpretation of descriptive crime statistics

## Responsible interpretation

The project reports counts of records, not population-adjusted crime rates. Changes can reflect reporting behavior, dataset completeness, or other factors; counts alone do not establish causality or individual risk. The original notebook excluded rape and aggravated assault records without a documented rationale. The rewrite keeps all categories by default rather than silently dropping them.

## Privacy and code access

The original notebooks and large CSV datasets are not included in the public showcase. The cleaned implementation is held in the private working repository during review. No dataset-specific performance or trend claims are made until the source data has been reviewed and the workflow run reproducibly.
