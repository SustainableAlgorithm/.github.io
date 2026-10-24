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

## Validation against the supplied source files

Both original CSV files contained 444,802 rows and produced the same monthly aggregates in review. There were 419 missing or unparseable occurrence dates. From May 2020 through August 2022, 148,326 records had valid dates in the analysis period. The original notebook's exclusion of rape and aggravated assault removes 17,819 records from that period, leaving 130,507 records in the remaining categories.

The notebook's manually entered monthly series matches the source-data counts after those two category exclusions in 27 of 28 months. April 2022 differs by one record: the notebook lists 4,715 while the CSV-derived count is 4,714. The discrepancy is documented rather than silently corrected. These are record counts, not population-adjusted crime rates.

## Responsible interpretation

The project reports counts of records, not population-adjusted crime rates. Changes can reflect reporting behavior, dataset completeness, or other factors; counts alone do not establish causality or individual risk. The original notebook excluded rape and aggravated assault records without a documented rationale. The rewrite keeps all categories by default rather than silently dropping them.

## Privacy and code access

The original notebooks and large CSV datasets are not included in the public showcase. The cleaned implementation is held in the private working repository during review. No dataset-specific performance or trend claims are made until the source data has been reviewed and the workflow run reproducibly.
