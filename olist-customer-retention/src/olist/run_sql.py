"""Run a .sql file against data/processed/olist.db and print the result (or save it).

    python -m src.olist.run_sql sql/01_order_facts.sql
    python -m src.olist.run_sql sql/01_order_facts.sql --save order_facts   # writes a table back to the DB
"""
import argparse
import sqlite3
from pathlib import Path

import pandas as pd

ROOT = Path(__file__).resolve().parents[2]
DB = ROOT / "data" / "processed" / "olist.db"


def query(sql: str) -> pd.DataFrame:
    with sqlite3.connect(DB) as con:
        return pd.read_sql_query(sql, con)


def main() -> None:
    ap = argparse.ArgumentParser()
    ap.add_argument("sql_file")
    ap.add_argument("--save", help="save result as this table name in olist.db")
    a = ap.parse_args()
    df = query(Path(a.sql_file).read_text())
    print(df.head(20).to_string())
    print(f"\n{len(df):,} rows")
    if a.save:
        with sqlite3.connect(DB) as con:
            df.to_sql(a.save, con, if_exists="replace", index=False)
        print(f"Saved as table '{a.save}'")


if __name__ == "__main__":
    main()
