-- subquery is a query that lives inside of another query

use joins_practice;

select t1.ID AS T1ID, t1.Fruit AS T1Fruit
FROM table1_fruit_basket t1
where t1.Fruit IN ('pear', 'apple');

-- switching to customers database
use customers;

-- adding some data to match Hassan
INSERT INTO customer 
(customer_id, first_name, last_name) 
VALUES 
(3, 'Jon', 'Smith');

select * from customers.customer;
select * from phone_number;

select c.first_name, c.last_name 
from customer c
where c.customer_ID in(
                       select customer_ID
                       from phone_number ph  
                       where ph.phone_number = '555-3344'
);

-- 
select ph.customer_ID
from phone_number ph
-- phone number begins with 5
where ph.phone_number LIKE '5%';
-- 

-- use parts
USE parts;

-- PRACTICE 
-- Find the name and status of each supplier who supplies project J2
select sp.sname, sp.status
from supplier sp
where sp.S_ID IN(
SELECT sy.S_ID 
from supply sy
where sy.J_ID = 'J2');