/*Assignment 2: Craft a query using an INNER JOIN to combine 'orders' and 'customers' tables for customers in a specified region,
 and a LEFT JOIN to display all customers ☐ including those without orders.*/

 CREATE TABLE customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    phone VARCHAR(20),
    address VARCHAR(255),
    city VARCHAR(100),
    postal_code VARCHAR(20),
    country VARCHAR(100),
    region VARCHAR(100)  
INSERT INTO customers (customer_name, email, phone, address, city, postal_code, country, region)
VALUES
('satish', 'satish.doe@example.com', '123-456-7890', '123 Elm Street', 'New York', '10001', 'USA', 'East'),
('virat', 'virat.smith@example.com', '987-654-3210', '456 Oak Street', 'Los Angeles', '90001', 'USA', 'West'),
('kohli', 'kohli.johnson@example.com', '555-555-5555', '789 Pine Street', 'Chicago', '60601', 'USA', 'East'),
('dhoni', 'dhoni.brown@example.com', '444-444-4444', '101 Maple Street', 'New York', '10002', 'USA', 'East');


CREATE TABLE orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    order_date DATE,
    amount DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);


INSERT INTO orders (customer_id, order_date, amount)
VALUES
(1, '2023-05-01', 150.00),
(2, '2023-05-02', 200.00),
(1, '2023-05-03', 50.00),
(3, '2023-05-04', 300.00);


SELECT c.customer_id, c.customer_name, c.email, o.order_id, o.order_date, o.amount
FROM customers c
INNER JOIN orders o ON c.customer_id = o.customer_id
WHERE c.region = 'East';


SELECT c.customer_id, c.customer_name, c.email, o.order_id, o.order_date, o.amount
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id;