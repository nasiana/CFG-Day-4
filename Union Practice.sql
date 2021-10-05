use joins_practice;
-- gives us everything from fruit basket 1
select t1.ID as T1ID, t1.Fruit as T1Fruit
FROM table1_fruit_basket t1;
-- gives us everything from fruit basket 2
select t2.ID as T2ID, t2.Fruit as T2Fruit
FROM table2_fruit_basket t2;

-- can only do a union when the columns of the table are the same
-- union is effectively two seperate select statements
-- union works as long as they have the column names and data types

-- UNION ALL adds the data from the second table into the columns of the
-- first table
-- UNION ALL adds all data, so will repeat values
select t1.ID as T1ID, t1.Fruit as T1Fruit
FROM table1_fruit_basket t1
UNION ALL
select t2.ID as T2ID, t2.Fruit as T2Fruit
FROM table2_fruit_basket t2;

-- UNION DISTINCT only adds unique data, so no repeats
-- don't need to add the distinct keyword
select t1.ID as T1ID, t1.Fruit as T1Fruit
FROM table1_fruit_basket t1
UNION DISTINCT 
select t2.ID as T2ID, t2.Fruit as T2Fruit
FROM table2_fruit_basket t2;

-- UNION does the same thing as UNION DISTINCT
-- don't need to add the distinct keyword
select t1.ID as T1ID, t1.Fruit as T1Fruit
FROM table1_fruit_basket t1
UNION
select t2.ID as T2ID, t2.Fruit as T2Fruit
FROM table2_fruit_basket t2;