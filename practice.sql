create database sql_joins;
show databases;
use sql_joins;

create table cricket( cricket_id int auto_increment,
name varchar(30),primary key(cricket_id));


create table football( football_id int auto_increment,
name varchar(30),primary key(football_id));

insert into cricket(name) values ("chandana"),("shirisha"),("kalyani"),("pavani"),("nasreen"),("shailu"),("aruna");
select * from cricket;

insert into football(name) values("shirisha"),("shailu"),("veeja"),("stella"),("kalpana"),("pavani"),("rani");
select * from football;

select * from cricket as c inner join 
football as f on c.name=f.name;

use sql_joins;
create table customer(customer_id int,customer_name varchar(35),order_id int, phone_number int,salary float);
insert into customer values(121,"rani",1001,23456,20000),
(131,"seetha",1002,34567,23000),
(141,"ram",1001,23467,35000),
(151,"raj",1003,56789,25000),
(161,"ravi",1004,34567,23000),
(171,"srilatha",1004,23456,24000);
select*from customer;

create table orders(order_id int, order_item  varchar(35),phone_number int,price int);
insert into orders values(1005,"laptop",34567,40000),
(1003,"pens",24568,1000),
(1008,"books",56789,2500),
(1004,"phones",23456,25000),
(1003,"exampad",34892,3000),
(1002,"chairs",34589,5000);
select*from orders;
select c.order_id,c.phone_number from customer as c left join orders as o on c.order_id=o.order_id;

select c.order_id,c.phone_number from customer as c right join orders as o on c.order_id=o.order_id;

