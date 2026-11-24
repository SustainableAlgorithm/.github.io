# IFT 410 — Lab 9: Anomaly Detection
# Submitted exercise scaffold. The statistical calculations and anomaly
# identification loop were left incomplete in the original coursework.

def get_col(A, i):
    """Return the ith column in a two-dimensional list as floats."""
    return [float(row[i]) for row in A]


# Open the tab-delimited dataset.
f = open("mammal_sleep_1.txt")

# Read the file into a matrix.
lines = [line.rstrip().split("\t") for line in f]

# Extract each attribute column, excluding the first column.
for i in range(1, len(lines[0])):
    x = get_col(lines, i)

    # TODO in original coursework:
    # - compute mean
    # - compute standard deviation
    # - identify and print anomalous values
