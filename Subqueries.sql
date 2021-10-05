-- subquery is a query that lives inside of another query

use joins_practice;

select t1.ID AS T1ID, t1.Fruit AS T1Fruit
FROM table1_fruit_basket t1
where t1.Fruit IN ('pear', 'apple');

-- switching to customers database
use customers;
