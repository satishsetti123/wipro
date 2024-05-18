/*Assignment 5: Begin a transaction, perform a series of INSERTs into 'orders', setting a SAVEPOINT after each,
 rollback to the second SAVEPOINT, and COMMIT the overall transaction.*/

 -- BEGIN a transaction
BEGIN TRANSACTION;

-- INSERT a new record into the 'orders' table and set a SAVEPOINT
SAVEPOINT savepoint1;
INSERT INTO orders (customer_id, order_date, amount)
VALUES (1, '2024-05-18', 100.00);

-- INSERT another record into the 'orders' table and set a SAVEPOINT
SAVEPOINT savepoint2;
INSERT INTO orders (customer_id, order_date, amount)
VALUES (2, '2024-05-19', 150.00);

-- INSERT a third record into the 'orders' table and set a SAVEPOINT
SAVEPOINT savepoint3;
INSERT INTO orders (customer_id, order_date, amount)
VALUES (3, '2024-05-20', 200.00);

-- ROLLBACK to the second SAVEPOINT
ROLLBACK TO SAVEPOINT savepoint2;

-- COMMIT the overall transaction
COMMIT;