/*Assignment 7: Prepare a series of SQL statements to INSERT new records 
into the library tables. UPDATE existing records with new information, 
and DELETE records based on specific criteria. 
Include BULK INSERT operations to load data from an external source*/


create database temp6;
use temp6;

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

show tables from temp6;

desc books;

desc checkoutrecords;

desc members;

select * from books;

INSERT INTO Books (book_id, title, author, publication_year, genre, ISBN)
VALUES 
(1, 'Zindagi', 'me', 2024, 'Fiction', '9780060935467'),
(2, 'na milegi', 'myself', 2023, 'fantasy', '9780451524935'),
(3, 'dobara', 'I', 1925, 'drama', '9780743273565');

update books
set publication_year=2022 
where title='dobara';

INSERT INTO Books VALUES 
(4, 'life is zindagi', 'sowmya', 2025, 'reality', '9780060935897');
INSERT INTO BOOKS VALUES
(5, 'corona', 'sm', 2020, 'education', '9780061135897');

delete from books
where publication_year<2021;