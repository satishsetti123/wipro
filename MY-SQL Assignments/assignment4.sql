/*Assignment 4: Write SQL statements to CREATE a new database 
and tables that reflect the library schema you designed earlier. 
Use ALTER statements to modify the table structures 
and DROP statements to remove a redundant table.*/

create database temp4;
use temp4;

CREATE TABLE Books (
    book_id INT PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    author VARCHAR(100) NOT NULL,
    publication_year INT CHECK (publication_year > 0),
    genre VARCHAR(50),
    ISBN VARCHAR(13) UNIQUE NOT NULL
);

CREATE TABLE Books2 (
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

show tables from temp4;

desc books;

desc checkoutrecords;

desc members;

alter table members 
add city varchar(20);

alter table members 
drop city;

desc members;

drop table Books2;

show tables from temp4;
