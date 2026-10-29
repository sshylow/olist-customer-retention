# Data

Source: [Brazilian E-Commerce Public Dataset by Olist](https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce) (CC BY-NC-SA 4.0). Raw files are git-ignored; don't commit them.

## Download

Option A, browser: click **Download** on the Kaggle page, unzip into `data/raw/`.

Option B, Kaggle CLI (needs your own API token in `~/.kaggle/kaggle.json`; never commit it):
```bash
kaggle datasets download -d olistbr/brazilian-ecommerce -p data/raw --unzip
```

## Tables (9 CSVs)

| File | Grain | Key columns |
|---|---|---|
| olist_orders_dataset.csv | 1 row per order | order_id, customer_id, order_status, order_purchase_timestamp, order_delivered_customer_date, order_estimated_delivery_date |
| olist_customers_dataset.csv | 1 row per order-customer | customer_id, **customer_unique_id**, customer_zip_code_prefix, customer_state |
| olist_order_items_dataset.csv | 1 row per item in an order | order_id, order_item_id, product_id, seller_id, price, freight_value |
| olist_order_payments_dataset.csv | 1 row per payment | order_id, payment_sequential, payment_type, payment_installments, payment_value |
| olist_order_reviews_dataset.csv | ~1 row per order | review_id, order_id, review_score, review_comment_message |
| olist_products_dataset.csv | 1 row per product | product_id, product_category_name, product_weight_g, ... (note: some columns are spelled `lenght` in the source) |
| olist_sellers_dataset.csv | 1 row per seller | seller_id, seller_zip_code_prefix, seller_state |
| olist_geolocation_dataset.csv | many rows per zip prefix | geolocation_zip_code_prefix, lat, lng |
| product_category_name_translation.csv | 1 row per category | Portuguese → English category names |

Check these column names against the actual files after download and fix this table if anything differs.
