# BigBasket Category Performance Diagnostic

A capstone project analyzing BigBasket category performance using **SQLite/SQL, Excel, Tableau Public and Python**.

## Repository contents

- `bigbasket_capstone.db` — SQLite database
- `orders_raw.csv` — raw order data
- `products.csv` — product master data
- `generate_data.py` — data-generation entry point
- `01_foundations.sql` — SQL foundations
- `02_aggregation_joins.sql` — aggregation and joins
- `03_reporting.sql` — monthly reporting, variance and target classification
- `monthly_category_revenue.csv` — SQL reporting export
- `bigbasket_category_crosscheck.xlsx` — spreadsheet analysis and category summary
- `analysis.ipynb` — Python cleaning, analysis and charts
- `DATA_STORY.md` — short data story and recommendations
- `ai_log.md` — AI-assisted development and verification log
- `verify.sql` — validation queries

## Tableau Public dashboard

**Add the published Tableau Public dashboard URL here.**

The dashboard is designed to show:
- Monthly revenue trend
- Category revenue comparison
- KPI cards
- Category target/tier status
- A filter/action affecting the dashboard worksheets

## Data story

See [`DATA_STORY.md`](DATA_STORY.md).

## Analysis workflow

1. Generate/validate the assignment data.
2. Query the SQLite database using the three SQL scripts.
3. Export the monthly category revenue CSV.
4. Analyze the same CSV in Excel with category targets and reconciliation.
5. Analyze and visualize the raw CSVs in Python.
6. Publish the final Tableau Public dashboard using the same monthly CSV.

## Verification

The project includes checks for row counts, status counts, monthly reporting, category totals and cross-validation between SQL, spreadsheet and Python outputs.

## Notes

The assignment requires the supplied data generator to be used exactly as provided, including its fixed random seed. If the instructor-supplied generator differs from this repository copy, replace `generate_data.py` with the exact supplied version before the final official run.
