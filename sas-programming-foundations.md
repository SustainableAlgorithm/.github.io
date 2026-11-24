# SAS Programming Foundations

**STP 315 · Spring 2022 · Undergraduate coursework**

This project documents foundational SAS programming work completed in STP 315. The available Chapter 8 assignment focuses on reading raw data files and preparing imported records for inspection and downstream analysis.

## Work represented

The published code examples demonstrate:

- Importing comma-delimited employee records with `INFILE` and `INPUT`
- Importing space-delimited quarterly donation records
- Reading tab-delimited manager records using the hexadecimal tab delimiter `'09'x`
- Defining character and numeric variable lengths with `LENGTH`
- Selecting output columns with `KEEP` and excluding fields with `DROP`
- Reading nonstandard date values with the `MONYY8.` informat and displaying dates with the `MONYY7.` format
- Inspecting imported SAS datasets with `PROC PRINT`

## Code

The corresponding [SAS programming repository](https://github.com/SustainableAlgorithm/sas-programming-foundations) contains a README and a SAS source file with the transcribed examples.

## Data and reproducibility

The original coursework references course-provided Orion sample files: `newemps.csv`, `donation.dat`, `managers2.dat`, and `custca.csv`. Those source data files are not included. The original local path is represented by the SAS macro variable `&path`; users must define it for their own environment.

The submitted assignment contains headings for additional Chapter 8 topics, including missing values and embedded delimiters, but does not include program text for those exercises. Those topics are therefore not represented as completed implementations here.

This is a portfolio transcription of undergraduate coursework, not a claim of recent professional SAS experience or a fully reproducible analysis with the original course data.
