# Why Don't Olist Customers Come Back?

An end-to-end data science project on the [Brazilian E-Commerce Public Dataset by Olist](https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce) (~100K orders, 2016–2018, 9 linked tables).

**Business question:** Only a small share of Olist customers ever place a second order. What drives that, and what should the business fix first?

**Hypothesis chain:** late delivery → bad review → customer never returns.

## What this project practices

| Skill | Where it shows up in this repo |
|---|---|
| SQL: joins, CTEs, window functions | `sql/` — every analysis table is built in SQL first |
| Causal inference | `notebooks/02` — propensity matching: does late delivery *cause* lower reviews? |
| Bayesian statistics / A/B-style comparison | `notebooks/02` — Beta-Binomial model of 1-star rates, late vs. on-time |
| Imbalanced classification | `notebooks/03` — predict repeat buyers (rare class): class weights, PR curves, calibration, SHAP |
| Time-series forecasting | `notebooks/04` — weekly order forecast with a proper backtest |
| BI dashboard + cloud warehouse | `dashboard/` — BigQuery sandbox + Looker Studio |

## Plan

- [ ] **Week 1 — SQL + EDA:** load data, build `order_facts`, `customer_facts`, cohort retention (`sql/01–04`), EDA notebook
- [ ] **Week 2 — Causal + Bayesian:** late delivery vs. review score; repeat-purchase effect
- [ ] **Week 2–3 — Model:** repeat-buyer classifier with honest evaluation
- [ ] **Week 3 — Forecast + dashboard + write-up:** `reports/findings.md`, Kaggle notebook, Looker Studio link

## Repo layout

```
data/raw/          Kaggle CSVs (git-ignored)
data/processed/    olist.db (SQLite) + derived tables (git-ignored)
sql/               numbered SQL files, run in order
notebooks/         01_sql_eda → 02_late_delivery_causal_bayes → 03_repeat_buyer_model → 04_forecast
src/olist/         small helpers (loading, queries)
reports/           findings.md + figures/
dashboard/         notes + link for the Looker Studio dashboard
```

## Setup

```bash
python3 -m venv .venv && source .venv/bin/activate
pip install -r requirements.txt
# Download the 9 CSVs into data/raw/ (see data/README.md), then:
python -m src.olist.load_db          # builds data/processed/olist.db
python -m src.olist.run_sql sql/01_order_facts.sql   # run a SQL file and preview
```

## Key gotcha

`customer_id` is **per order**. Use `customer_unique_id` to identify a person across orders, or you will find zero repeat customers.

## Findings

_To be written in `reports/findings.md` as the project progresses. No numbers go in this README until they come out of the analysis._
