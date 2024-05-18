/*Assignment 1: Write a SELECT query to retrieve all columns from a 'customers' table, and modify it to return only the customer
 name and email address for customers in a specific city.*/

 CREATE TABLE customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    phone VARCHAR(20),
    address VARCHAR(255),
    city VARCHAR(100),
    postal_code VARCHAR(20),
    country VARCHAR(100)
);
INSERT INTO customers (customer_name, email, phone, address, city, postal_code, country)
VALUES
('John Doe', 'john.doe@example.com', '123-456-7890', '123 Elm Street', 'New York', '10001', 'USA'),
('Jane Smith', 'jane.smith@example.com', '987-654-3210', '456 Oak Street', 'Los Angeles', '90001', 'USA'),
('Alice Johnson', 'alice.johnson@example.com', '555-555-5555', '789 Pine Street', 'Chicago', '60601', 'USA'),
SELECT * FROM customers;
SELECT customer_name, email
FROM customers
WHERE city = 'New York';