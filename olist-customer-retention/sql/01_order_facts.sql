-- 01 · order_facts: one row per DELIVERED order. Worked example — read every line.
-- Save it:  python -m src.olist.run_sql sql/01_order_facts.sql --save order_facts
WITH items AS (
    SELECT order_id,
           COUNT(*)            AS n_items,
           SUM(price)          AS items_value,
           SUM(freight_value)  AS freight_value,
           COUNT(DISTINCT seller_id) AS n_sellers
    FROM order_items
    GROUP BY order_id
),
pay AS (
    SELECT order_id,
           SUM(payment_value)        AS paid_value,
           MAX(payment_installments) AS max_installments
    FROM order_payments
    GROUP BY order_id
),
rev AS (
    -- some orders have more than one review: keep the latest one
    SELECT order_id, review_score
    FROM (
        SELECT order_id, review_score,
               ROW_NUMBER() OVER (PARTITION BY order_id ORDER BY review_answer_timestamp DESC) AS rn
        FROM order_reviews
    )
    WHERE rn = 1
)
SELECT o.order_id,
       c.customer_unique_id,
       c.customer_state,
       o.order_purchase_timestamp,
       DATE(o.order_purchase_timestamp, 'start of month') AS order_month,
       JULIANDAY(o.order_delivered_customer_date) - JULIANDAY(o.order_purchase_timestamp)       AS delivery_days,
       JULIANDAY(o.order_delivered_customer_date) - JULIANDAY(o.order_estimated_delivery_date)  AS days_late,
       CASE WHEN o.order_delivered_customer_date > o.order_estimated_delivery_date THEN 1 ELSE 0 END AS is_late,
       i.n_items, i.items_value, i.freight_value, i.n_sellers,
       p.paid_value, p.max_installments,
       r.review_score
FROM orders o
JOIN customers c ON c.customer_id = o.customer_id
LEFT JOIN items i ON i.order_id = o.order_id
LEFT JOIN pay   p ON p.order_id = o.order_id
LEFT JOIN rev   r ON r.order_id = o.order_id
WHERE o.order_status = 'delivered'
  AND o.order_delivered_customer_date IS NOT NULL;
