use learnSQL;
CREATE TABLE state (
    st_id INT,
    st_name VARCHAR(40)
); 
alter table state modify column st_id int primary key; 

insert into state values (1,'karnataka');
insert into state values (2,'andhra');
insert into state values (3,'kerela');
select * from state;

CREATE TABLE bg (
    bg_id INT,
    bg_name VARCHAR(10)
);

alter table bg modify column bg_id int primary key; 


insert into bg values (1,'o+ve');
insert into bg values (2,'o-ve');
insert into bg values (3,'b+ve');
insert into bg values (4,'b-ve');
select *from bg;

 CREATE TABLE employee (
  eid INT PRIMARY KEY,
  ename VARCHAR(20) NOT NULL,
  age INT NOT NULL,
  bg INT,   
  state INT,   
  FOREIGN KEY (bg) REFERENCES bg(bg_id),
  FOREIGN KEY (state) REFERENCES state(st_id)
);

insert into employee values(1,'shaiksha',25,1,1);
insert into employee values(2,'suresh',24,2,2);
insert into employee values(3,'veena',30,2,1);
insert into employee values(4,'kiran',35,3,1);
insert into employee values(5,'ravi',25,3,3);

select * from employee;


