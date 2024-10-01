create table Customer(
customer_id int primary key,
first_name varchar(30),
last_name varchar(30),
date_of_birth date,
gender varchar(6),
contact_number bigint,
email varchar(20),
address varchar(50));
INSERT INTO Customer (customer_id, first_name, last_name, date_of_birth, gender, contact_number, email, address)
VALUES 
(1, 'John', 'Doe', '1985-04-12', 'Male', 9876543210, 'doe@email.com', '123 Main St'),
(2, 'Jane', 'Smith', '1990-06-15', 'Female', 9876543211, 'smith@email.com', '456 Oak St'),
(3, 'Mike', 'Brown', '1975-08-22', 'Male', 9876543212, 'brown@email.com', '789 Pine St'),
(4, 'Emily', 'Davis', '1988-11-05', 'Female', 9876543213, 'davis@email.com', '101 Maple St'),
(5, 'Chris', 'Taylor', '1995-12-30', 'Male', 9876543214, 'taylor@email.com', '202 Birch St'),
(6, 'Sarah', 'Wilson', '1982-03-09', 'Female', 9876543215, 'wilson@email.com', '303 Cedar St'),
(7, 'David', 'Lee', '1978-05-18', 'Male', 9876543216, 'lee@email.com', '404 Elm St');


create table Policies(
policy_id int Primary Key,
 policy_name varchar(20),
 policy_type varchar(15),
 coverage_details varchar(25),
 premium bigint,
 start_date date,
 end_date date);
 INSERT INTO Policies (policy_id, policy_name, policy_type, coverage_details, premium, start_date, end_date)
VALUES 
(101, 'Health Secure', 'Health', 'Full Coverage', 10000, '2023-01-01', '2024-01-01'),
(102, 'Life Guard', 'Life', 'Accidental Death', 5000, '2023-02-01', '2025-02-01'),
(103, 'Car Protect', 'Auto', 'Collision Damage', 8000, '2023-03-01', '2024-03-01'),
(104, 'Home Shield', 'Home', 'Fire Damage', 12000, '2023-04-01', '2024-04-01'),
(105, 'Travel Safe', 'Travel', 'Trip Cancellation', 3000, '2023-05-01', '2024-05-01'),
(106, 'Term Life', 'Life', 'Death Benefit', 6000, '2023-06-01', '2025-06-01'),
(107, 'Bike Cover', 'Auto', 'Theft Protection', 4000, '2023-07-01', '2024-07-01');

 
 create table Claims(
 claim_id int Primary Key,
 claim_date date,
 claim_amount bigint,
 approved_amount bigint,
 claim_status varchar(10),
 policy_id  int , 
customer_id int,
 Foreign Key (policy_id) references Policies(policy_id),
 Foreign Key (customer_id) references Customer(customer_id));
 INSERT INTO Claims (claim_id, claim_date, claim_amount, approved_amount, claim_status, policy_id, customer_id)
VALUES 
(1001, '2023-07-10', 20000, 18000, 'Approved', 101, 1),
(1002, '2023-08-12', 5000, 4000, 'Approved', 102, 2),
(1003, '2023-09-15', 15000, 0, 'Rejected', 103, 3),
(1004, '2023-10-18', 12000, 10000, 'Approved', 104, 4),
(1005, '2023-11-20', 8000, 7000, 'Approved', 105, 5),
(1006, '2023-12-01', 10000, 9000, 'Approved', 106, 6),
(1007, '2023-12-10', 6000, 5000, 'Approved', 107, 7);

 
 create table Agents(
 agent_id int  Primary Key ,
 first_name varchar(20),
 last_name varchar(20),
 contact_number bigint,
email  varchar(20),
hire_date date);
INSERT INTO Agents (agent_id, first_name, last_name, contact_number, email, hire_date)
VALUES 
(201, 'Alice', 'Johnson', 9876543220, 'johnson@email.com', '2022-01-10'),
(202, 'Bob', 'Anderson', 9876543221, 'anderson@email.com', '2022-02-15'),
(203, 'Clara', 'Martinez', 9876543222, 'martinez@email.com', '2022-03-20'),
(204, 'Dan', 'Rodriguez', 9876543223, 'rodriguez@email.com', '2022-04-25'),
(205, 'Eve', 'Lee', 9876543224, 'lee@email.com', '2022-05-30'),
(206, 'Frank', 'Garcia', 9876543225, 'garcia@email.com', '2022-06-10'),
(207, 'Grace', 'Moore', 9876543226, 'moore@email.com', '2022-07-15');


create table PolicyAssignments(
 assignment_id int Primary Key, 
 customer_id int,
 policy_id int,
 start_date date,
 end_date date,
 foreign key(customer_id) references Customer(customer_id),
 foreign key(policy_id) references Policies(policy_id)
 );
INSERT INTO PolicyAssignments (assignment_id, customer_id, policy_id, start_date, end_date)
VALUES 
(301, 1, 101, '2023-01-01', '2024-01-01'),
(302, 2, 102, '2023-02-01', '2025-02-01'),
(303, 3, 103, '2023-03-01', '2024-03-01'),
(304, 4, 104, '2023-04-01', '2024-04-01'),
(305, 5, 105, '2023-05-01', '2024-05-01'),
(306, 6, 106, '2023-06-01', '2025-06-01'),
(307, 7, 107, '2023-07-01', '2024-07-01');

create table ClaimProcessing(
processing_id int Primary Key,
 claim_id  int,
 processing_date date,  
 payment_amount date,
 payment_date date,
 foreign key(claim_id) references Claims(claim_id));
 
 alter table ClaimProcessing modify column payment_amount bigint;
INSERT INTO ClaimProcessing (processing_id, claim_id, processing_date, payment_amount, payment_date)
VALUES 
(401, 1001, '2023-07-15', 18000, '2023-07-20'),
(402, 1002, '2023-08-20', 4000, '2023-08-25'),
(403, 1003, '2023-09-20', 0, NULL),
(404, 1004, '2023-10-25', 10000, '2023-10-30'),
(405, 1005, '2023-11-25', 7000, '2023-12-01'),
(406, 1006, '2023-12-05', 9000, '2023-12-10'),
(407, 1007, '2023-12-15', 5000, '2023-12-20');

-- DDL Queries 
-- query 1
alter table Agents add column new_column varchar(20);
 select * from Agents;
 -- query 2
 alter table Policies rename column policy_name to policy_title;
 -- query 3
 alter  table Customer drop address;
 
 -- DML Queries 
 -- query 1
 update  Policies set premium=20000 where policy_id=104;
-- query 2
delete from Claims where customer_id=4;  -- cant delete because of linked of foreign key
-- query 3
 INSERT INTO Policies  VALUES (111, 'Health  ', 'Health', 'Full Coverage', 10000, '2023-01-01', '2024-01-01');

-- Join Queries
 -- query 2
 select c.claim_id,p.* from Claims c join Policies p on c.policy_id=p.policy_id;
  -- query 3
  select c.claim_id,cus.* from Claims c join Customer cus on c.customer_id=cus.customer_id;
  -- query 4
  select 
  P.policy_type,
    COUNT(C.claim_id) as number_of_claims,
    SUM(C.claim_amount) as total_claim_amount
from 
    Claims C
join 
    Policies P on C.policy_id = P.policy_id
group by 
    P.policy_type;
  -- query 5
 SELECT 
    C.customer_id,
    C.claim_id,
    C.claim_amount,
    C.claim_status,
    C.claim_date AS recent_claim_date
FROM 
    Claims C
JOIN 
    (SELECT customer_id, MAX(claim_date) AS recent_claim_date
     FROM Claims
     GROUP BY customer_id) AS RecentClaims
ON 
    C.customer_id = RecentClaims.customer_id
AND 
    C.claim_date = RecentClaims.recent_claim_date
ORDER BY 
    C.customer_id; 