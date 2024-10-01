create table books1(
book_id int primary key,
title varchar(20),
author_id int,
genre varchar(30),
isbn bigint,
available_copies int,foreign key(author_id)references authors (author_id) );
 INSERT INTO books1 (book_id, title, author_id, genre, isbn, available_copies) VALUES
(1, 'Mockingbird', 1, 'Fiction', 9780061120084, 5),
(2, 'Gatsby', 2, 'Fiction', 9780743273565, 3),
(3,'happy', 3, 'Dystopian', 9780451524935, 4),
(4, 'Pride', 4, 'Romance', 9781503290563, 2),
(5, 'Huckle', 5, 'Adventure', 9780486280615, 6),
(6, 'Harry1', 6, 'Fantasy', 9780747532699, 10),
(7, 'Abrar', 7, 'Historical Fiction', 9780141439600, 3),
(8, 'Old city', 8, 'Fiction', 9780684801223, 4);



create table authors1(
author_id int primary key,
first_name varchar(20),
last_name varchar(20),
date_of_birth date,
nationality varchar(10));
INSERT INTO authors1 (author_id, first_name, last_name, date_of_birth, nationality) VALUES
(1, 'Harper', 'Lee', '1926-04-28', 'American'),
(2, 'F. Scott', 'Fitzgerald', '1896-09-24', 'American'),
(3, 'George', 'Orwell', '1903-06-25', 'British'),
(4, 'Jane', 'Austen', '1775-12-16', 'British'),
(5, 'Mark', 'Twain', '1835-11-30', 'American'),
(6, 'J.K.', 'Rowling', '1965-07-31', 'British'),
(7, 'Charles', 'Dickens', '1812-02-07', 'British'),
(8, 'Ernest', 'Hemingway', '1899-07-21', 'American');


create table members1(
member_id int primary key,
first_name varchar(20), 
last_name varchar(20),
date_of_birth date,
contact_number bigint,
email varchar(30),
 membership_date date);
  INSERT INTO members1 (member_id, first_name, last_name, date_of_birth, contact_number, email, membership_date) VALUES
(1, 'John', 'Doe', '1990-05-15', 9876543210, 'johndoe@gmail.com', '2022-01-10'),
(2, 'Jane', 'Smith', '1985-08-25', 9123456789, 'janesmith@yahoo.com', '2021-07-22'),
(3, 'Alice', 'Johnson', '1995-03-18', 9988776655, 'alicej@hotmail.com', '2023-02-14'),
(4, 'Robert', 'Brown', '1982-11-02', 9111222233, 'robertb@gmail.com', '2020-10-10'),
(5, 'Emily', 'Davis', '1992-12-08', 9223344556, 'emilydavis@outlook.com', '2021-05-30'),
(6, 'Michael', 'Williams', '1998-06-22', 9334455667, 'michaelw@gmail.com', '2023-03-01'),
(7, 'Sophia', 'Miller', '1987-04-12', 9445566778, 'sophiam@live.com', '2022-12-25'),
(8, 'David', 'Wilson', '1993-09-29', 9556677889, 'davidw@gmail.com', '2021-09-15');


create table staff1(
staff_id int primary key,
 first_name varchar(20),
last_name varchar(20),
position varchar(20),
contact_number bigint,
email varchar(30),
hire_date date);
INSERT INTO staff1 (staff_id, first_name, last_name, position, contact_number, email, hire_date) VALUES
(1, 'Lily', 'White', 'Librarian', '9876543210', 'lily.white@library.com', '2015-03-10'),
(2, 'James', 'Green', 'Assistant', '9123456789', 'james.green@library.com', '2017-07-18'),
(3, 'Oliver', 'Black', 'Clerk', '9988776655', 'oliver.black@library.com', '2020-02-25'),
(4, 'Emma', 'Gray', 'Librarian', '9111222233', 'emma.gray@library.com', '2018-06-22'),
(5, 'Noah', 'Blue', 'Assistant', '9223344556', 'noah.blue@library.com', '2016-11-15'),
(6, 'Ava', 'Brown', 'Clerk', '9334455667', 'ava.brown@library.com', '2019-05-10'),
(7, 'William', 'Blackwood', 'Assistant', '9445566778', 'william.blackwood@library.com', '2022-01-20'),
(8, 'Mia', 'Jones', 'Librarian', '9556677889', 'mia.jones@library.com', '2014-09-30');


create table loans1(
loan_id int primary key,
book_id int,
member_id int,
loan_date date,
return_date date,
actual_return_date date,
foreign key(book_id) references books(book_id),
foreign key(member_id) references members1(member_id));
INSERT INTO loans1 (loan_id, book_id, member_id, loan_date, return_date, actual_return_date) VALUES
(1, 1, 1, '2024-09-01', '2024-10-01', NULL),
(2, 2, 2, '2024-09-05', '2024-10-05', NULL),
(3, 3, 3, '2024-09-10', '2024-10-10', '2024-09-30'),
(4, 4, 4, '2024-09-15', '2024-10-15', NULL),
(5, 5, 5, '2024-09-18', '2024-10-18', NULL),
(6, 6, 6, '2024-09-20', '2024-10-20', NULL),
(7, 7, 7, '2024-09-22', '2024-10-22', NULL),
(8, 8, 8, '2024-09-23', '2024-10-23', NULL);


-- DDL Queries
alter table books1 add column new_column varchar(20);
alter table staff1 rename column position to job_title;
alter table members1 drop column email;
 
 -- DML Queries
  INSERT INTO books1 (book_id, title, author_id, genre, isbn, available_copies,new_column) VALUES
(9, 'rockyLife', 1, 'horror', 978521120084, 7,'new_data');
  update   members1 set contact_number='6303833290' where  member_id=4;
  delete from loans1 where  loan_id=6;
INSERT INTO loans1 (loan_id, book_id, member_id, loan_date, return_date, actual_return_date) VALUES
(9, 8, 4, '2024-09-01', '2024-10-01', NULL);

-- Join Queries

-- query 1

SELECT 
    b.title,
    CONCAT(a.first_name, ' ', a.last_name) AS author_name
FROM
    books1 b
        JOIN
    authors1 a ON a.author_id = b.author_id;
    
     
    -- query 2
    
     select b.title as book_name , l.loan_date,l.return_date,
    concat(m.first_name, " " ,m.last_name) as name 
    from loans1 l join books b on l.book_id=b.book_id 
    join members1 m on    l.member_id= m.member_id
    where l.actual_return_date is null;
    
    -- query 3
    
    select b.title as book_name,concat(m.first_name,' ',m.last_name) as person_name from loans1 
    l join books b on b.book_id=l.book_id 
    join members1 m on m.member_id=l.member_id;
    
    -- query 4
    select concat(s.first_name,' ',s.last_name),s.hire_date from staff1 s join members1 m 
    on s.staff_id=m.member_id;
    
    -- query 5 
    select count(genre),available_copies from books1;
   