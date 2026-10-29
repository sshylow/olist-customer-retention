# Dashboard (BigQuery sandbox + Looker Studio)

1. Create a free BigQuery sandbox project (no credit card) in Google Cloud.
2. Upload `order_facts` and `customer_facts` (export from olist.db with pandas `to_csv`) as tables in a dataset called `olist`.
3. Rewrite 1–2 of your `sql/` queries in BigQuery SQL (date functions differ from SQLite: `DATE_TRUNC`, `DATE_DIFF`). Note the differences in this file — that's useful interview material.
4. Build a Looker Studio report on those tables: KPI row (orders, % late, avg review, repeat rate), late % by state map, review score vs days-late chart, cohort retention table.
5. Paste the public link here and in the main README.

Link: _not built yet_
