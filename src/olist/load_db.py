"""Load the Olist CSVs from data/raw/ into a SQLite database at data/processed/olist.db.

Table names drop the 'olist_' prefix and '_dataset' suffix, e.g. olist_orders_dataset.csv -> orders.
Run from the repo root:  python -m src.olist.load_db
"""
import sqlite3
from pathlib import Path

import pandas as pd

ROOT = Path(__file__).resolve().parents[2]
RAW = ROOT / "data" / "raw"
DB = ROOT / "data" / "processed" / "olist.db"


def table_name(csv: Path) -> str:
    name = csv.stem.replace("olist_", "").replace("_dataset", "")
    return "category_translation" if name.startswith("product_category_name_translation") else name


def main() -> None:
    csvs = sorted(RAW.glob("*.csv"))
    if not csvs:
        raise SystemExit(f"No CSVs in {RAW}. See data/README.md to download them.")
    DB.parent.mkdir(parents=True, exist_ok=True)
    with sqlite3.connect(DB) as con:
        for csv in csvs:
            df = pd.read_csv(csv)
            t = table_name(csv)
            df.to_sql(t, con, if_exists="replace", index=False)
            print(f"{t:<22} {len(df):>8,} rows  {len(df.columns)} cols")
    print(f"\nWrote {DB}")


if __name__ == "__main__":
    main()
