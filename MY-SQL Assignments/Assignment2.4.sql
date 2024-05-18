/*Assignment 4: Compose SQL statements to BEGIN a transaction, INSERT a new record into the 'orders' table,
 COMMIT the transaction, then UPDATE the 'products' table, and ROLLBACK the transaction.*/

BEGIN TRANSACTION;

INSERT INTO orders (customer_id, order_date, amount)
VALUES (123, '2024-05-18', 500.00);
COMMIT;
UPDATE products
SET stock_quantity = stock_quantity - 1
WHERE product_id = 456;
ROLLBACK;