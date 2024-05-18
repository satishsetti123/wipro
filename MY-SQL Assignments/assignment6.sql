/*Assignment 6: Create a new database user with specific privileges 
using the CREATE USER and GRANT commands 
Then, write a script to REVOKE certain privileges and DROP the user*/


create database temp5;
use temp5;

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

show tables from temp5;

desc books;

desc checkoutrecords;

desc members;

CREATE USER 'sowmya2'@'localhost' IDENTIFIED BY 'sowmya';
GRANT SELECT, INSERT, UPDATE ON temp5.* TO 'sowmya2'@'localhost';

REVOKE select,update ON temp5.* FROM 'sowmya2'@'localhost';

show grants for 'sowmya2'@'localhost';

select * from books;


alter table members 
add city varchar(20);

alter table members 
drop city;