/*Assignment 2: Design a database schema for a library system, 
including tables, fields, and constraints like NOT NULL, UNIQUE, 
and CHECK. 
Include primary and foreign keys to establish relationships
between tables.*/

create database temp3;
use temp3;

CREATE TABLE Books (
    book_id INT PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    author VARCHAR(100) NOT NULL,
    publication_year INT CHECK (publication_year > 0),
    genre VARCHAR(50),
    ISBN VARCHAR(13) UNIQUE NOT NULL
);

CREATE TABLE Members (
    member_id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100),
    phone_number VARCHAR(20)
);

CREATE TABLE CheckoutRecords (
    record_id INT PRIMARY KEY,
    book_id INT,
    member_id INT,
    checkout_date DATE,
    due_date DATE,
    return_date DATE,
    FOREIGN KEY (book_id) REFERENCES Books(book_id),
    FOREIGN KEY (member_id) REFERENCES Members(member_id)
);

show tables from temp3;

desc books;

desc checkoutrecords;

desc members;
