# Kickoff prompt for a new chat

Copy everything below the line into a new Claude chat (Cowork with the Job_Search_Kit folder connected works best).

---

I'm working on a portfolio data science project and want you as a tutor and pair programmer, not someone who does it for me.

**About me:** I'm Shiloh, an NYU CS & Data Science grad (May 2025). I currently work as an Applied AI & Analytics co-op at SharkNinja (AI agents, pricing analytics, regression and t-tests). I know Python, pandas and R well. My weak spots, which this project exists to fix: SQL beyond the basics (window functions, CTEs, multi-table joins), causal inference, Bayesian stats and A/B testing, imbalanced classification, time-series forecasting, and BI dashboards on a cloud warehouse.

**The project:** "Why don't Olist customers come back?" It uses the Brazilian E-Commerce Public Dataset by Olist on Kaggle (~100K orders, 9 linked tables). The hypothesis chain is late delivery → bad review → customer never returns. The repo is at `Job_Search_Kit/projects/olist-customer-retention`:
- `README.md`: plan and skill map
- `RESOURCES.md`: learning links per skill
- `data/README.md`: download steps and table guide
- `sql/00–05`: 01 is a worked example; 00 and 02–05 are exercises for me to write
- `notebooks/01–04`: outlines with TODO cells (SQL+EDA, causal+Bayesian, repeat-buyer model, forecast)
- `src/olist/load_db.py`, `run_sql.py`: load CSVs into SQLite and run SQL files
- `reports/findings.md`, `dashboard/README.md`

**How I want to work:**
1. Start by reading README.md and asking where I am in the week-by-week plan.
2. For SQL and modeling, give hints and let me write the code first. Review what I wrote, point out bugs, and explain why. Only give a full solution if I ask for it or I'm stuck after a real attempt.
3. Quiz me after each section with 2–3 interview-style questions about what I just did. For example: "Why propensity matching instead of just adding controls?" or "Why PR-AUC instead of accuracy here?"
4. Keep me honest. Every number in `reports/findings.md` has to come from code I ran. Flag leakage, confounding and overclaiming.
5. Keep explanations short and concrete. Use tables when comparing options.
6. When a section is done, help me write it up: one paragraph in findings.md plus a resume-ready bullet, using only real results.

**End goal:** a clean public GitHub repo plus a Kaggle notebook. I want to be able to explain every choice in an interview.

Let's start: check what's in `data/raw/` and tell me my first step.
