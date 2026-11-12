# Local data folder

Data source: [Vikash Giri — HR Analytics end-to-end project](https://github.com/vikashGiri27/HR-Analytics-end-to-end-project/tree/197d1081a261e0167a1002588de142ba5d6f44fd/Database).

The ten CSVs used to develop this dashboard match that repository byte for byte. Raw records and imported data caches are deliberately excluded from this portfolio repository. The upstream repository has no declared license at the verified revision; this project does not grant rights to its data.

After independently obtaining permission to use the source data, place these files here, retaining their original names:

`Attendance.csv`, `Departments.csv`, `Employees.csv`, `Exit.csv`, `Jobs.csv`, `Leave.csv`, `Payroll.csv`, `Performance.csv`, `Recruitment.csv`, `Training.csv`.

Run `python scripts/verify_data.py Source-Data` to check the files against the original hashes. Then set Power BI's **DatasetRoot** parameter to this folder's absolute path and refresh. Do not commit this folder's data. Details: [data provenance](../docs/DATA-SOURCE.md).
