-- Part 1: Reporting
SELECT product_name, unit_price,
       CASE
         WHEN unit_price >= 200 THEN 'Premium'
         WHEN unit_price >= 100 THEN 'Mid'
         ELSE 'Budget'
       END AS price_tier
FROM products;

WITH monthly AS (
  SELECT p.category,
         strftime('%Y-%m',o.order_date) AS month,
         COUNT(o.order_id) AS order_count,
         ROUND(SUM(o.amount),2) AS total_revenue,
         ROUND(AVG(o.amount),2) AS avg_revenue
  FROM orders o
  JOIN products p ON p.product_id=o.product_id
  WHERE o.status='Delivered' AND o.amount IS NOT NULL
  GROUP BY p.category, month
)
SELECT m.*,
       t.target_revenue,
       ROUND(m.total_revenue - t.target_revenue/6.0,2) AS variance,
       ROUND((m.total_revenue - t.target_revenue/6.0) /
             NULLIF(t.target_revenue/6.0,0) * 100.0,2) AS percentage_variance,
       CASE
         WHEN m.total_revenue >= t.target_revenue/6.0 THEN 'Meeting/Above Target'
         ELSE 'Below Target'
       END AS target_classification
FROM monthly m
JOIN category_targets t ON t.category=m.category
ORDER BY m.month,m.category;
