-- Part 1: Aggregation and Joins
SELECT p.category,
       COUNT(o.order_id) AS delivered_orders,
       ROUND(SUM(o.amount),2) AS total_revenue
FROM products p
INNER JOIN orders o ON p.product_id=o.product_id
WHERE o.status='Delivered' AND o.amount IS NOT NULL
GROUP BY p.category
HAVING SUM(o.amount) > 0
ORDER BY total_revenue DESC;

SELECT p.product_name,
       COUNT(o.order_id) AS order_count
FROM products p
LEFT JOIN orders o ON p.product_id=o.product_id
GROUP BY p.product_id, p.product_name
ORDER BY order_count, p.product_name;
