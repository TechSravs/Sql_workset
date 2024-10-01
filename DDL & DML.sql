-- we know insert commands already
use learnsql;

CREATE TABLE employees (
    eid INT PRIMARY KEY,
    fname VARCHAR(50),
    lname VARCHAR(50),
    age INT,
    salary DECIMAL(10, 2),  -- Salary can have decimals, so using DECIMAL data type
    dept VARCHAR(50),
    doj DATE  -- Date of Joining
);

INSERT INTO employees (eid, fname, lname, age, salary, dept, doj) VALUES
(1, 'Rajeev', 'sukla', 23, 12000, '.net', '2011-10-23'),
(2, 'sowmya', 'kumari', 23, 19000, 'db', '2011-11-13'),
(3, 'Kishore', 'kumar', 27, 36000, 'android', '2011-10-16'),
(4, 'Abimanyu', 'biswal', 22, NULL, 'android', '2010-02-20'),
(5, 'sony', 'Kumar', 22, 21000, 'db', '2009-06-21'),
(6, 'aru', '_singh', 22, 12000, '.net', '2011-10-23'),
(7, '_dinesh', 'mohitarty', 23, 15000, 'db', '2009-08-19'),
(8, 'nishala', 'kumari', 22, 18000, 'db', '2008-07-19'),
(9, 'Rajeev', 'sukla', 23, 12000, '.net', '2011-10-23');

set sql_safe_updates=0;

update employees set fname='raja' and lname='raveender' where age=66;

update employees set fname='meena' and lname='kumari' where eid=11;

delete from employees where eid = 10 and 11; 

select * from employees;

truncate employees;

select * from employees;
  
  drop table employees;

select * from employees;
