use learnsql;

CREATE TABLE persons (
    pid INT PRIMARY KEY,
    fname VARCHAR(50),
    lname VARCHAR(50),
    age INT,
    bg VARCHAR(10)  -- blood group
);

INSERT INTO persons (pid, fname, lname, age, bg) VALUES
(1, 'madhava', 'reddy', 45, 'o+ve'),
(2, 'abhinav', 'bandra', 45, 'o-ve'),
(4, 'hari', 'kiran', 60, 'b+ve'),
(3, 'madhava', 'kiran', 52, 'o+ve'),
(5, 'veena', 'kumari', 42, NULL),
(6, 'k_iran', 'kumar', 39, 'b-ve'),
(7, 'abhinav', 'bandra', 45, 'b+ve'),
(8, 'mahes%h', 'nambootri', 36, 'b+ve'),
(9, 'rahul', 'kumar', 46, 'b-ve'),
(10, 'bharat', 'kumar', 56, 'b-ve');

select * from persons;

select pid,fname,lname,age,bg from persons;

select concat(fname ," " ,lname) as fullname,pid,age from persons;

select concat(fname ," " ,lname) as fullname,age+2 as age from persons; 

select concat(fname ," " ,lname,"'s bg is",bg ," and he/she is from india ") as patient_details from persons;

select concat(fname ," " ,lname) as fullname from persons order by age;

select concat(fname ," " ,lname) as fullname from persons order by bg desc;

select * from persons order by age desc;

select distinct(fname),age from persons;

select distinct(age),bg from persons;

select distinct(fname),age,bg from persons order by bg desc;

select distinct(fname),age,bg from persons order by bg desc limit 3;

select distinct(fname),age,bg from persons order by bg desc limit 3,5;

select * from persons where age>45;

select * from persons where age between 40 and 50;

select * from persons where age>40 and bg !="o+ve";

select * from persons where bg is not null;

select * from persons where bg   in (42,36,60);

select * from persons where bg  not in (42,36,60);

select * from persons  where fname like 'm%';

select * from persons  where fname like '%i';

select * from persons  where fname like '_a%';

select * from persons  where fname like '%a_';

select * from persons  where fname like '%r__';

select * from persons  where fname like '%i%';

