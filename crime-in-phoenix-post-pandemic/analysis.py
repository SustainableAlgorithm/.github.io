"""Crime in Phoenix in a Post-Pandemic World — ACO 423, Fall 2022.

Curated reproduction of the submitted notebook's core pandas workflow.
The original incident-level City of Phoenix CSV is not included.
"""

from pathlib import Path
import pandas as pd
import matplotlib.pyplot as plt

INPUT_CSV = Path("crimestat_1.csv")
OUTPUT_CSV = Path("phoenix_monthly_crime_counts.csv")

# Load the City of Phoenix Open Data export.
crime_data = pd.read_csv(INPUT_CSV)

# Keep only the fields needed for this monthly trend analysis.
data = crime_data[["OCCURRED ON", "UCR CRIME CATEGORY"]].copy()

# Remove rows without occurrence dates.
data["OCCURRED ON"] = data["OCCURRED ON"].replace("", pd.NA)
data = data.dropna(subset=["OCCURRED ON"])

# Parse occurrence dates and exclude categories identified in the report
# as historically underreported.
data["DATE"] = pd.to_datetime(
    data["OCCURRED ON"].str.split().str[0],
    format="%m/%d/%Y",
    errors="coerce",
)
data = data.dropna(subset=["DATE"])
excluded_categories = {"RAPE", "AGGRAVATED ASSAULT"}
data = data[~data["UCR CRIME CATEGORY"].isin(excluded_categories)]

# Retain the project's May 2020–August 2022 analysis period.
data = data[data["DATE"] >= pd.Timestamp("2020-05-01")].copy()
data["MONTH"] = data["DATE"].dt.to_period("M")

monthly_counts = (
    data.groupby("MONTH")
    .size()
    .rename("crime_incidents")
    .reset_index()
)
monthly_counts["month"] = monthly_counts["MONTH"].astype(str)
monthly_counts = monthly_counts[["month", "crime_incidents"]]
monthly_counts.to_csv(OUTPUT_CSV, index=False)

# Plot the monthly incident totals.
monthly_counts.plot(
    x="month",
    y="crime_incidents",
    kind="line",
    marker="o",
    legend=False,
    title="Crime Incidents in Phoenix by Month",
)
plt.xlabel("Month")
plt.ylabel("Number of Crime Incidents")
plt.xticks(rotation=70)
plt.tight_layout()
plt.show()
