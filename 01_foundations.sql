-- Part 1: SQL Foundations
SELECT * FROM products;
SELECT * FROM orders WHERE status = 'Delivered';
SELECT DISTINCT city FROM customers ORDER BY city;
SELECT product_name AS product, unit_price AS price FROM products ORDER BY unit_price DESC LIMIT 10;
SELECT * FROM products WHERE category IN ('Bakery','Personal Care');
SELECT * FROM products WHERE unit_price BETWEEN 50 AND 150;
SELECT * FROM products WHERE unit_price NOT BETWEEN 50 AND 150;
SELECT * FROM orders WHERE amount IS NULL;
