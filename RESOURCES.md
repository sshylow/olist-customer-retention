# Resources

Grouped by the skill each part of the project practices. Free unless noted.

## Data
- [Olist dataset (Kaggle)](https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce): the source
- [Olist as a SQLite database (Kaggle)](https://www.kaggle.com/datasets/terencicp/e-commerce-dataset-by-olist-as-an-sqlite-database): shortcut if you want to skip `load_db.py`
- [Kaggle API / CLI](https://github.com/Kaggle/kaggle-api): downloading from the command line
- Example Olist work to compare against *after* you've done your own version: [Olist eCommerce Analysis and Dashboard (Kaggle notebook)](https://www.kaggle.com/code/philipclemente/olist-ecommerce-analysis-and-dashboard)

## SQL (joins, CTEs, window functions)
- [SQLBolt](https://sqlbolt.com/): quick interactive refresher on the basics
- [SQLite window functions docs](https://www.sqlite.org/windowfunctions.html): ROW_NUMBER, LAG/LEAD, FIRST_VALUE as used in `sql/`
- [DataLemur](https://datalemur.com/): interview-style SQL questions by company
- [LeetCode Top SQL 50](https://leetcode.com/studyplan/top-sql-50/): drill set; pairs with your NeetCode habit

## Experimentation, A/B testing, Bayesian stats
- [Think Bayes 2 (Allen Downey)](https://allendowney.github.io/ThinkBayes2/): Beta-Binomial and comparing two rates in Python
- [PyMC documentation](https://www.pymc.io/): the library notebook 02 uses
- [Statistical Rethinking 2024 (Richard McElreath)](https://github.com/rmcelreath/stat_rethinking_2024): lecture videos and course materials, the deeper path
- *Trustworthy Online Controlled Experiments* (Kohavi, Tang, Xu), [experimentguide.com](https://experimentguide.com/): the standard A/B-testing book (paid)

## Causal inference
- [Causal Inference for the Brave and True (Matheus Facure)](https://matheusfacure.github.io/python-causality-handbook/): Python, covers propensity scores and matching
- [The Effect (Nick Huntington-Klein)](https://theeffectbook.net/): clear explanations of confounding and matching
- [Causal Inference: The Mixtape (Scott Cunningham)](https://mixtape.scunning.com/): more econometrics-flavored

## Imbalanced classification and model explanation
- [scikit-learn probability calibration](https://scikit-learn.org/stable/modules/calibration.html)
- [imbalanced-learn](https://imbalanced-learn.org/): resampling options (try them, but class weights often do as well)
- [LightGBM docs](https://lightgbm.readthedocs.io/)
- [SHAP docs](https://shap.readthedocs.io/)

## Forecasting
- [Forecasting: Principles and Practice, Python edition (Hyndman et al.)](https://otexts.com/fpppy/): the go-to free textbook
- [statsmodels time series (tsa)](https://www.statsmodels.org/stable/tsa.html): SARIMAX, Exponential Smoothing

## Cloud warehouse and BI
- [BigQuery sandbox](https://cloud.google.com/bigquery/docs/sandbox): free, no credit card
- [Looker Studio](https://lookerstudio.google.com/): free dashboarding on top of BigQuery

_Links were added Oct 28, 2026 and not individually re-checked; fix any that have moved._
