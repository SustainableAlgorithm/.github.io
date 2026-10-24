"""Monthly aggregation example using synthetic incident records only."""
from __future__ import annotations
import pandas as pd

REQUIRED_COLUMNS = {"occurred_on", "category"}

def monthly_counts(records: pd.DataFrame, start_date: str = "2020-05-01") -> tuple[pd.DataFrame, dict]:
    missing = REQUIRED_COLUMNS - set(records.columns)
    if missing:
        raise ValueError(f"Missing required columns: {sorted(missing)}")
    data = records.loc[:, ["occurred_on", "category"]].copy()
    input_rows = len(data)
    data["date"] = pd.to_datetime(data["occurred_on"], errors="coerce")
    invalid_dates = int(data["date"].isna().sum())
    data = data.dropna(subset=["date"])
    data = data.loc[data["date"] >= pd.Timestamp(start_date)].copy()
    data["month"] = data["date"].dt.to_period("M").dt.to_timestamp()
    counts = (
        data.groupby("month", as_index=False)
        .size()
        .rename(columns={"size": "record_count"})
        .sort_values("month")
        .reset_index(drop=True)
    )
    summary = {
        "input_rows": input_rows,
        "invalid_or_missing_dates": invalid_dates,
        "rows_in_period": len(data),
        "months_counted": len(counts),
        "start_date": str(pd.Timestamp(start_date).date()),
    }
    return counts, summary

def example_records() -> pd.DataFrame:
    """Return invented sample records; not real-world incident data."""
    return pd.DataFrame({
        "occurred_on": ["2020-05-03", "2020-05-18", "2020-06-02", "2020-04-30", "not-a-date"],
        "category": ["THEFT", "BURGLARY", "THEFT", "THEFT", "UNKNOWN"],
    })

if __name__ == "__main__":
    counts, summary = monthly_counts(example_records())
    print("Synthetic example only — not real crime data.")
    print(counts.to_string(index=False))
    print("Data quality:", summary)
