/*Assignment 3: Utilize a subquery to find customers who have placed orders above the average order value, and write a UNION query
 to combine two SELECT statements with the same number of columns.*/

 SELECT AVG(amount) AS avg_order_value FROM orders;

SELECT c.customer_id, c.customer_name, c.email, o.order_id, o.amount
FROM customers c
INNER JOIN orders o ON c.customer_id = o.customer_id
WHERE o.amount > (SELECT AVG(amount) FROM orders);


SELECT customer_id, customer_name, email
FROM customers
WHERE region = 'East'

UNION

SELECT customer_id, customer_name, email
FROM customers
WHERE region = 'West';