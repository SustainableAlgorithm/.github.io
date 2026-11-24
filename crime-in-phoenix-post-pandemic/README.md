# Crime in Phoenix in a Post-Pandemic World

**Kathleen Kagan · ACO 423 · Fall 2022**  
**Project type:** Undergraduate data science research project  
**Data source:** City of Phoenix Open Data crime incidents

## Research question

David S. Abrams' research on crime during COVID-19 documented a substantial early-pandemic decline in crime and hypothesized that crime would return toward pre-pandemic levels as mobility increased. This project examined whether that pattern appeared in Phoenix.

The analysis used the City of Phoenix as a focused case study rather than attempting to reproduce Abrams' 25-city dataset. The submitted project describes a source dataset of more than 444,000 incident records spanning November 1, 2015 through August 29, 2022. The analysis period was May 2020 through August 2022, with the May–October 2020 overlap used as a comparison against the earlier research.

## Data preparation

The notebook shows a Python/pandas workflow that:

1. Reads the City of Phoenix crime CSV.
2. Retains the incident date and UCR crime category for the monthly trend question.
3. Removes records with missing occurrence dates.
4. Excludes the UCR categories RAPE and AGGRAVATED ASSAULT, which the project identifies as historically underreported.
5. Converts occurrence dates to month-year values.
6. Filters the analysis window to dates on or after May 1, 2020.
7. Counts incidents by month and year and visualizes the results.

The project report explains that the selected variables were occurrence date and UCR crime category; other fields such as incident number, case closure date, block address, ZIP code, premise type, and grid code were not needed for this particular monthly trend analysis.

## Methods discussed

The presentation and report discuss regression, association analysis, exponential smoothing, and autoregressive integrated moving average (ARIMA). The report is candid that the final Python implementation successfully used regression but did not successfully incorporate association analysis and recommendation engines. It also explains that Excel pivot tables and statistical-computing techniques were used to further inspect the monthly output.

This distinction matters: the project explores and evaluates several methods, but it should not be represented as a completed implementation of every method discussed.

## Findings reported in the submitted project

The submitted analysis reports that:

- Phoenix crime totals remained below the pre-pandemic levels discussed in the reference research during the analyzed period.
- June and July 2020 were the lowest-crime months in the 28-month analysis window, rather than showing the spike described in the 25-city comparison.
- December 2020 and January 2021 had the highest monthly totals in the submitted series.
- March 2022 was identified as an outlier, followed by a marked decline through August 2022.
- The project did not establish the socioeconomic causes of these monthly patterns; the report explicitly leaves the March 2022 outlier unexplained.

The project therefore challenged the expectation that Phoenix crime would steadily return to pre-pandemic levels as COVID restrictions eased. These are the conclusions of the submitted undergraduate analysis, not a current assessment of Phoenix crime or a causal explanation.

## Monthly aggregate data

The repository includes a small, derived monthly-count table for the 28-month period, not the underlying incident-level crime dataset. The aggregate values are transcribed from the submitted notebook and chart export.

See [`phoenix_monthly_crime_counts.csv`](phoenix_monthly_crime_counts.csv) and [`analysis.py`](analysis.py).

## Files

- [`analysis.py`](analysis.py) — readable Python/pandas version of the notebook's main data-preparation and monthly aggregation workflow.
- [`phoenix_monthly_crime_counts.csv`](phoenix_monthly_crime_counts.csv) — 28 monthly aggregate counts from May 2020 through August 2022.
- [`research-notes.md`](research-notes.md) — summary of the submitted report and presentation, including scope and limitations.

The original notebook, presentation, and report are retained by the author. This public project contains a curated, reproducible representation rather than raw incident records or the complete course submission.

## Limitations

- The project uses one city, Phoenix, rather than the 25-city sample in the referenced research.
- The project excludes aggravated assault and rape because of underreporting concerns stated in the submitted work.
- The monthly counts are not population-adjusted crime rates.
- The analysis is descriptive and does not establish causation.
- The source dataset was downloaded during Fall 2022 and ended August 29, 2022; the findings are historical, not current.
- The monthly aggregate values are transcribed from the submitted notebook/chart output and have not been independently recomputed from the original incident-level CSV, which is not included here.

## References

- Abrams, D. S. (2020). *COVID and Crime: An Early Empirical Look*. University of Pennsylvania, Institute for Law & Economics Research Paper No. 20-49. https://papers.ssrn.com/sol3/papers.cfm?abstract_id=3674032
- Abrams, D. S. (2021, March 30). *Crime in the Time of COVID*. EconoFact. https://econofact.org/crime-in-the-time-of-covid
- City of Phoenix Open Data. https://www.phoenixopendata.com/dataset

## Academic context

**Arizona State University · ACO 423 · Fall 2022**
