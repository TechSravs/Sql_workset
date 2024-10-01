create database LearnSQL;

use learnSQL;

create table student (
sid int primary key,
name varchar(40),
class varchar(40),
dob date);

insert into student values (1,"rajeev","9th class",'1999-10-23');
insert into student values (12,"veena","10th class",'1998-05-24');
 select * from student;