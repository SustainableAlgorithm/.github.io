# Phoenix Crime Hotspot Forecasting

**Portfolio project · Python · Machine learning · Time-series forecasting · Responsible data science**

This project explores whether historical monthly crime counts across Phoenix police-grid areas can help forecast which grid areas will have the highest counts in a subsequent period. It compares a Random Forest regression approach with per-grid SARIMAX time-series forecasts.

> **Responsible-use note:** This is an academic forecasting project, not a recommendation for operational policing. Reported crime counts reflect reporting, enforcement, and data-collection practices as well as underlying events. Forecasts can reproduce historical inequities and should not be used to make decisions about individuals or justify enforcement without rigorous independent review, community oversight, and impact assessment.

## Research question

Can temporal patterns in historical grid-level incident counts help identify the five grid areas with the highest observed monthly counts?

## Data and study design

- **Study period:** January 2020–December 2024.
- **Geographic unit:** Phoenix police-grid areas represented by a grid identifier.
- **Target:** monthly incident count per grid.
- **Training and validation:** the current cleaned implementation trains on 2020–2022, selects Random Forest parameters on 2023 validation data, and refits through 2023 before evaluating on the 2024 holdout.
- **Privacy:** raw incident-level data, incident identifiers, and block-level address information are not published with this showcase.

## Methods

### Random Forest regression

The model uses grid, calendar year/month, season, previous-month counts, and rolling averages from prior 3-, 6-, and 12-month windows. The current implementation selects model parameters on 2023 validation data and reserves 2024 for the final holdout evaluation.

### SARIMAX

A seasonal ARIMA model is fitted separately for recurring hotspot grids selected using training-period history. The current implementation forecasts 12 months of 2024 using data through December 2023.

The evaluation protocols differ: Random Forest features can use observed counts from preceding months in 2024, while SARIMAX forecasts the full year from data through 2023. This means the scores are not a perfectly controlled head-to-head comparison.

## Preliminary results

The current cleaned pipeline ran against the local source dataset. Its preliminary Random Forest holdout results are:

| Metric | Preliminary result |
|---|---:|
| Mean absolute error (MAE) | 1.6183 |
| Root mean squared error (RMSE) | 2.4245 |
| R² | 0.7031 |
| Mean number of correct grids in monthly Top-5 | 3.00 out of 5 |
| Mean monthly Top-5 overlap accuracy | 60.0% |

These figures describe the **current cleaned implementation**, not a claim that the original submitted notebook or final PDF has been exactly reproduced. The saved outputs from the original notebook differ, so results are documented as preliminary pending full reconciliation of the evaluation protocol and final reporting.

Across the five evaluated SARIMAX grids, the mean grid-level R² was approximately −0.546. This indicates that performance was weak under that metric for the evaluated grids; the model should not be characterized as a strong forecaster based on these results.

## Key engineering and analytical work

- Cleaned and aggregated incident records into a monthly grid-level panel.
- Engineered lagged and rolling historical features without using the current month's target in those features.
- Separated model selection from final holdout evaluation in the cleaned implementation.
- Compared regression error metrics with a Top-5 hotspot-overlap metric.
- Documented the distinction between rolling monthly prediction and full-year forecasting.
- Considered privacy, disclosure risk, structural bias, and the limits of forecasting historical crime data.

## Limitations

- Reported incidents are not a complete or neutral measure of crime incidence.
- Counts may reflect reporting rates, enforcement patterns, and data collection practices.
- Grid-level aggregation conceals within-area variation and does not support claims about individuals.
- Forecast accuracy alone does not establish that a model should guide resource allocation or policing.
- Results should be reproduced under a clearly defined forecasting protocol before being treated as final.

## Code access

The full working repository is kept private during review because it includes unfinished analysis and requires additional validation. **Source code can be shared with a hiring team for a focused review by request.**

## Tools

Python · pandas · NumPy · scikit-learn · statsmodels · pytest

---

*Portfolio summary prepared for review. Metrics are explicitly labeled preliminary; the final research report and original notebook remain the source artifacts under audit.*
