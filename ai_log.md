# AI-Assisted Development Log

## Prompt 1 — SQL / Reporting Support
**Role:** data-analysis assistant  
**Task:** Build and review SQLite queries for the BigBasket category diagnostic, including foundations, aggregation/joins, monthly reporting, variance and target classification.  
**Context:** Assignment-provided BigBasket schema and generated CSV/SQLite data.  
**Constraints:** Keep the required table/column names and use SQLite-compatible syntax.  
**Format:** Return runnable SQL scripts grouped by assignment section.

**Verification performed:** checked table counts, order-status counts, monthly category output structure, and reconciliation of exported monthly revenue with the database queries.

## Prompt 2 — Python Analysis Support
**Role:** data-analysis assistant  
**Task:** Review a Python notebook workflow for cleaning, missing values, IQR capping, date derivation, category/supplier aggregation and visualizations.  
**Context:** `orders_raw.csv` and `products.csv` from the same project.  
**Constraints:** preserve cancelled/pending rating nulls, exclude missing amounts from revenue calculations, cap delivered non-null amounts with the IQR fence, and cross-check top category/supplier.  
**Format:** Jupyter Notebook cells plus concise What/Why/Next-Step observations.

**Verification performed:** checked duplicate removal by `order_id`, missing-amount handling, IQR calculation, derived date fields, category/supplier joins, and chart requirements.
