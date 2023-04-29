create database students;
use students;
create table customers( customer_id int,first_name varchar(25), last_name varchar (25),city varchar(20));
describe customers;
insert into customers values(12,"chandana","addakula","hyderabad"),
(13,"puja","yadav","maharashtra"),
(14,"fahima","nisha","chennai"),
(15,"deebiga","murugan","tamilnadu"),
(16,"sravaya","seetha","chennai"),
(17,"rani","anitha","delhi"),
(18,"vani","reethu","telangana");
select * from customers;


-- alter single comment
/* multiline comment*/
alter table customers change customer_id customers_ids int;
alter table customers modify city varchar(25) not null;
alter table customers add salary float;
alter table customers drop salary;
rename table customers to customer;
describe customer;
drop  table customer;