-- Verification queries
SELECT COUNT(*) AS product_count FROM products;
SELECT COUNT(*) AS customer_count FROM customers;
SELECT COUNT(*) AS order_count FROM orders;
SELECT COUNT(*) AS target_count FROM category_targets;
SELECT status, COUNT(*) AS status_count
FROM orders GROUP BY status ORDER BY status;
SELECT COUNT(*) AS monthly_rows FROM (
  SELECT p.category, strftime('%Y-%m',o.order_date) month
  FROM orders o JOIN products p ON p.product_id=o.product_id
  WHERE o.status='Delivered' AND o.amount IS NOT NULL
  GROUP BY p.category, month
);
