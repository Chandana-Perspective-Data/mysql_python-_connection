create database sql_joins1;
use sql_joins1;
show databases;
CREATE table joins(customer_id int not null,customer_name varchar(25),city varchar(25),phone_number int,email varchar(35),
address  varchar(50));
insert into joins values(1001,"rajitha","chennai",12345,"rajitha@gmail.com","mg road"),

(1002,"fahima","chennai",98765,"fahi1234@gmail.com","omr road"),
(1003,"sathvika","hyderabad",45678,"sathvika@gmail.com","bashirbad"),
(1004,"sravani","tamilnadu",12356,"sravani7@gmail.com","maiapur"),
(1002,"tanya","hyderabad",34567,"tanya@gmail.com","abids");

select*from joins;


create table join1(order_id int,order_name varchar(35),city varchar(25),phone_number int,number_orders int);
insert into join1 values(1002,"food","hyd",12345,2),
(1006,"laptop","chennai",23456,3),
(1008,"books","telangana",98765,5),
(1004,"pens","maharasthra",56789,8),
(1002,"tables","mumbai",12789,1);

select * from join1;
-- inner join
/*, if customer_id 1002 appears in both joins and join1, the resulting inner join will include that record. 
If a record appears in one table but not the other,
 it will not be included in the result set.*/

SELECT *FROM joins INNER JOIN join1
ON joins.customer_id = join1.order_id;

/*You can also specify which columns you want to include in the result set,
 rather than using * to select all columns. */
 SELECT joins.customer_name, joins.city, join1.order_name, join1.number_orders
FROM joins INNER JOIN join1
ON joins.customer_id = join1.order_id;

-- left join

/*This will return all the records from the joins table, 
as well as any matching records from the join1 table. If there is no match, 
the resulting row will have NULL values for the columns from join1.*/

SELECT *FROM joins LEFT JOIN join1
ON joins.customer_id = join1.order_id;
/* if customer_id 1002 appears in joins but not join1, 
the resulting left join will include that record with NULL values for the join1 columns. 
If a record appears in join1 but not joins, it will not be included in the result set.*/

SELECT joins.customer_name, joins.city, join1.order_name, join1.number_orders
FROM joins LEFT JOIN join1
ON joins.customer_id = join1.order_id;

-- right join

/*This will return all the records from the join1 table, 
as well as any matching records from the joins table. If there is no match, 
the resulting row will have NULL values for the columns from joins.*/

SELECT *FROM joins RIGHT JOIN join1
ON joins.customer_id = join1.order_id;

/*You can also specify which columns you want to include in the result set, 
rather than using * to select all columns.*/

SELECT joins.customer_name, joins.city, join1.order_name, join1.number_orders
FROM joins RIGHT JOIN join1
ON joins.customer_id = join1.order_id;



/*FULL OUTER JOIN*/
/*This will return all the records from both joins and join1, 
and will include NULL values for any columns that do not have a match in the other table.*/


-- try your self full join