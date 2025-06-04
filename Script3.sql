USE store;

SELECT o.id AS order_id, c.name AS customer_name, SUM(oi.quantity * oi.price) AS total_amount
FROM orders o
JOIN customers c ON o.customer_id = c.id
JOIN order_items oi ON oi.order_id = o.id
GROUP BY o.id, c.name;

SELECT p.name, SUM(oi.quantity) AS total_sold
FROM order_items oi
JOIN products p ON oi.product_id = p.id
GROUP BY p.id
ORDER BY total_sold DESC
LIMIT 1;

SELECT p.name, p.stock - IFNULL(SUM(oi.quantity), 0) AS stock_left
FROM products p
LEFT JOIN order_items oi ON p.id = oi.product_id
GROUP BY p.id;

SELECT c.name
FROM customers c
LEFT JOIN orders o ON c.id = o.customer_id
WHERE o.id IS NULL;
