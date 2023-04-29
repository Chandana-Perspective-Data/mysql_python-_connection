create database mydemo;
use mydemo;
show databases;
create table dataofcustomers( cusid varchar(6) primary key,
fname varchar(30),
mname varchar(30),
lname varchar(30),
city varchar(30),
age int(10),
mobileno varchar(10),
occupation varchar(30),
DOB date

);
show tables;
drop table dataofcustomer;
insert into dataofcustomers values("co1","A","RANI","SHREE","HYD",45,"9955443322","ANALYST","1976-12-06");

insert into dataofcustomers values("co2","B","RAM","REDDY","WRNGL",39,"9955453312","STUDENT","1999-12-10");
insert into dataofcustomers values("co3","C","SEETHA","RANI","MADYAPRADESH",25,"9955403322","CLERK","1986-10-26");
insert into dataofcustomers values("co4","D","RAJITHA","RAM","BANGLORE",38,"9955449322"," DATA ANALYST","1976-12-06");
insert into dataofcustomers values("co5","E","STELLA","JESSY","KERLA",35,"9955143322","MANAGER","1986-12-12");
insert into dataofcustomers values("co6","F","MOUNI","REDDY","MAHARASTRA",39,"9955453322","STUDENT","1998-11-16");
insert into dataofcustomers values("co7","G","MAHESHWARI","MOTHUM","MUMBAI",55,"9955443622","ANALYST","1955-02-11");
insert into dataofcustomers values("co8","H","SEJAL","CHOWDARY","CHENNAI",25,"9955443722","MANAGER","1956-12-30");


select *from dataofcustomers;
select min(age),fname as minage from dataofcustomers;
select fname ,mname, age from dataofcustomers where age = 25;
select max(age) as maxage from dataofcustomers;
select max(age), fname,mname,age from dataofcustomers where age=55;
select count(age) as total_customer from dataofcustomers;
select fname from dataofcustomers where age=55;
select count(*) from dataofcustomers;

select count(fname),city from dataofcustomers group by city;
# Retrieve the details of the customer with the highest age:
SELECT * FROM dataofcustomers WHERE age = (SELECT MAX(age) FROM dataofcustomers);
# Retrieve the details of customers whose first name starts with the letter "S":
SELECT * FROM dataofcustomers WHERE mname LIKE 'R%';
# Retrieve the count of customers by their occupation:
SELECT occupation, COUNT(*) as count FROM dataofcustomers GROUP BY occupation;
# Retrieve the details of customers whose last name is "REDDY":
SELECT * FROM dataofcustomers WHERE lname = 'REDDY';
# Retrieve the details of customers who were born in December:
SELECT * FROM dataofcustomers WHERE MONTH(DOB) = 12;
# Retrieve the average age of customers:
SELECT AVG(age) as avg_age FROM dataofcustomers;
# Retrieve the details of customers whose age is between 30 and 40:
SELECT * FROM dataofcustomers WHERE age BETWEEN 30 AND 40;
# Retrieve the details of customers sorted by their age in descending order:
SELECT * FROM dataofcustomers ORDER BY age DESC;
select *from dataofcustomers order by age ;



