import pandas as pd
import pytest
from monthly_trends import example_records, monthly_counts

def test_example_counts_months_chronologically():
    counts, summary = monthly_counts(example_records())
    assert counts["record_count"].tolist() == [2, 1]
    assert counts["month"].tolist() == [pd.Timestamp("2020-05-01"), pd.Timestamp("2020-06-01")]
    assert summary["input_rows"] == 5
    assert summary["invalid_or_missing_dates"] == 1
    assert summary["rows_in_period"] == 3

def test_rejects_missing_required_columns():
    with pytest.raises(ValueError, match="Missing required columns"):
        monthly_counts(pd.DataFrame({"date": ["2020-05-01"]}))

def test_no_rows_after_start_date_returns_empty_counts():
    frame = pd.DataFrame({"occurred_on": ["2019-01-01"], "category": ["THEFT"]})
    counts, summary = monthly_counts(frame)
    assert counts.empty
    assert summary["rows_in_period"] == 0
