use sql_joins1;
create table emp(emp_id int not null,emp_name varchar (25),
city varchar (25),salary float);
insert into emp values (01,"raj","chennai",20000),
(02,"ram","mumbai",23000),
(03,"seetha","telangana",24000),
(04,"stella","telangana",32000),
(05,"varun","delhi",25000),
(06,"surekha","maharasthra",30000),
(07,"shailu","chennai",28000),
(08,"srilatha","mumbai",34000),
(09,"raju","delhi",24000),
(10,"ravi","pune",34000);
select *from emp;
/*This query will select all rows from the emp table 
where the city is 'telangana' and the salary is greater than 25000.*/
SELECT * FROM emp
WHERE city = 'telangana' AND salary > 25000;

/*This query will select all rows from the emp table 
where the city is 'mumbai' or 'delhi'.*/
SELECT * FROM emp
WHERE city = 'mumbai' OR city = 'delhi';
SELECT * FROM emp
WHERE city = 'chennai' OR city = 'mumbai' OR city = 'delhi';


/*This query will select all rows from the emp table 
where the city is not 'telangana'.*/
SELECT * FROM emp
WHERE NOT city = 'telangana';

SELECT * FROM emp
WHERE NOT city = 'telangana' AND NOT city = 'maharasthra';

/*This query will select all rows from the emp table 
where the salary is between 30000 and 35000.*/
SELECT * FROM emp
WHERE salary BETWEEN 30000 AND 35000;

/*The COUNT() function is used to count 
the number of rows in a table that meet a certain condition. 
Here are some examples of using the COUNT() function:*/
SELECT COUNT(*) FROM emp
WHERE city = 'chennai';

/*The SELECT DISTINCT statement is used to return only unique 
values in the result set of a SELECT statement.*/
SELECT DISTINCT city FROM emp;

/*You can also use SELECT DISTINCT in
 combination with the WHERE clause to filter 
the unique values based on certain criteria.*/

SELECT DISTINCT city FROM emp WHERE salary > 25000;

/*The SUBSTRING() function is used to extract a portion of a string in SQL.*/
-- SUBSTRING(string, start_position, length)
SELECT SUBSTRING(emp_name, 1, 3) FROM emp;

/*You can also use SUBSTRING() in combination with the WHERE clause to filter
 the results based on certain criteria. */
 
SELECT SUBSTRING(emp_name, 1, 3) FROM emp WHERE city = 'chennai';