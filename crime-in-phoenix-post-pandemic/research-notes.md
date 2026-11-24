# Research Notes — Crime in Phoenix in a Post-Pandemic World

**ACO 423 · Fall 2022**

## Motivation

The project began with David S. Abrams' research and EconoFact article, which described a sharp early-pandemic drop in crime and discussed the possibility that crime would return toward pre-pandemic levels as mobility increased.

The project question was whether this expectation was supported by the City of Phoenix data.

## Scope and dataset

The submitted report describes a City of Phoenix Open Data CSV with more than 444,000 records from November 1, 2015 through August 29, 2022. The analysis focused on May 2020 through August 2022. The overlap from May through October 2020 was intended as a check against the earlier study.

The project selected occurrence date and UCR crime category for its monthly count analysis. Aggravated assault and rape were excluded because the project treated them as historically underreported categories. The analysis did not attempt to explain why crime occurred or to attribute changes to any single social factor.

## Workflow in the submitted notebook

- Load CSV data with pandas.
- Drop fields not needed for the monthly trend question.
- Remove rows without occurrence dates.
- Parse the occurrence date and derive a month-year label.
- Exclude the two crime categories identified in the report.
- Filter to May 1, 2020 and later.
- Count incidents by month-year.
- Plot the chronological series and compare calendar-month patterns across years.

## Methods considered

The presentation discusses regression, association analysis, exponential smoothing, and ARIMA. The project report clarifies that regression was used in the final Python code, while association analysis and recommendation engines were not successfully incorporated. It also describes using Excel pivot tables to inspect the output and compare patterns.

## Reported findings

The project reports lower Phoenix crime totals during the analyzed period than the pre-pandemic levels discussed in Abrams' research. Within its 28-month window, June and July 2020 were reported as the lowest months, while December 2020 and January 2021 were the highest. March 2022 was identified as an outlier, with lower totals in the months that followed.

The report explicitly states that the reason for the March 2022 outlier remained unknown. It also acknowledges that socioeconomic factors may influence crime patterns but were not investigated in this project.

## Interpretation cautions

This is a historical undergraduate descriptive analysis, not a current crime report. Monthly incident totals are not population-adjusted rates. The work does not establish causation, and the Phoenix-only sample is not directly equivalent to a 25-city analysis. Its conclusions should be read within the stated time period and data exclusions.

## Source materials

The public GitHub project includes a curated Python workflow and derived monthly aggregate counts. It does not publish the original incident-level City of Phoenix crime dataset or reproduce the full presentation and report.
