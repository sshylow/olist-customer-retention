-- 00 · Warm-up. Answer each in a comment under the query before moving on.
-- Tables: orders, customers, order_items, order_payments, order_reviews, products, sellers, geolocation, category_translation

-- Q1. How many orders per order_status?
SELECT order_status, COUNT(*) AS n
FROM orders
GROUP BY order_status
ORDER BY n DESC;

-- Q2 (you write it). How many distinct customer_id vs distinct customer_unique_id? Why do they differ?

-- Q3 (you write it). Date range of order_purchase_timestamp. Are the first and last months complete?

-- Q4 (you write it). Do any orders have more than one review? More than one payment row? (GROUP BY ... HAVING COUNT(*) > 1)
