use learnSQL;

create table constraints (
eid int primary key,
name varchar(10) unique,
bg varchar(10) default 'O+ve',
age int check(age between 18 and 60));

insert into constraints values (1,'shaik','b-ve',50);

insert into constraints (eid,name,bg,age)values (2,null,'b-ve',50);
insert into constraints (eid,name,bg,age)values (3,'','b-ve',50);
insert into constraints (eid,name,bg,age)values (4,'sravani','',50);
insert into constraints (eid,name,bg,age)values (5,'shahid','o+ve',55);
insert into constraints (eid,name,age)values (6,'sahil',55);


select * from constraints;


