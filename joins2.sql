use learnsql;
create table person(
pid int primary key,
name varchar(10),
age int);
 
 insert into person values (1,"sehwag",39),(2,'malik',40),(3,'babu',29),(4,'modi',30);
 
create table profession(
sno int primary key,
profession varchar(10),
pid int, foreign key (pid) references person(pid));

 insert into profession values (1,"cricketer",1),(3,'teacher',4),(4,'politician',2),(5,'scientist',null);

select * from person;
select * from profession;

select p.pid,p.name,p.age,pf.profession from person p left outer join profession pf on p.pid=pf.pid;