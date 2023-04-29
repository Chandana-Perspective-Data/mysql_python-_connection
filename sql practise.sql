create database company;
use company;
show company;
create database comp;
use comp;
show databases;
drop database company;
create table customer(customer_id int,first_name varchar(25),last_name varchar (20),city varchar(20));
insert into customer values(12,"chandana","addakula","hyd"),
(13,"rani","seetha","bangloor"),
(14,"madu","puja","chennai"),
(15,"keerthi","ranii","chennai");
select * from customer;
alter table customer change first_name first_customres varchar(30);
describe customer;
alter table customer add gender char(1) after last_name;
alter table customer drop column salary;
rename table customer to customer_info;
describe customer_info;
select *from customer_info;
update customer set first_customers = "ram",last_name="ravi" where city="hyd";