use sys;
create table emp(EMPLOYEE_ID int ,
FIRST_NAME varchar(25),
LAST_NAME varchar(25),
EMAIL varchar(25),
PHONE_NUMBER varchar(20),
HIRE_DATE date NOT NULL,
JOB_ID varchar(10),
SALARY int,
 MANAGER_ID int,
  DEPARTMENT_ID int);

  create table Department1(DEPARTMENT_ID int,
DEPARTMENT_NAME varchar(25),
MANAGER_ID int);
insert into emp values
(11,"vamshi","Addakula","vamshi@gmail.com",2345,"2022-09-02","AD_PRESS",40000,111,2221),
(12,"siddhu","Addakula","siddhu@gmail.com",1235,"2022-09-03","AD_VP",50000,112,2222),
(14,"shirisha","Alikanti","shiri@gmail.com",3456,"2022-09-04","AD_VP",20000,113,2223),
(15,"Alivela","sandhyapaga","sandhya@gmail.com",1234,"2022-09-05","IT_PROG",30000,114,2224),
(16,"shailaja","Gikki","shailaja@gmail.com",1234,"2022-09-01","PRESS",20000,115,2225),
(17,"seetha","Gandam","seetha@gmail.com",5678,"2022-09-08","ACCOUNT",20000,116,2226),
(18,"Rani","juttu","rani@gmail.com",6789,"2020-04-07","AC_MGR",30000,117,2237),
(19,"MAHI","Errapoya","Mahi@gmail.com",5482,"2021-08-06","AD_PRES",60000,118,2238);

select *from emp;
insert into Department1 values
(1234,"press",4321),
(2345,"Accountant",5432),
(3456,"AC_MGRS",6543),
(4567,"PRESS",7654),
(5678,"AD_PRESS",8765),
(7890,"IT",9087),
(3567,"press",4589),
(8291,"It",4378);
select *from Department1;
select FIRST_NAME,LAST_NAME,SALARY,SALARY*.15 PF from emp;
select JOB_ID,COUNT(*) from emp group by JOB_ID;

SELECT department_name AS 'Department Name', 
COUNT(*) AS 'No of Employees' 
FROM departments 
INNER JOIN employees 
ON employees.department_id = departments.department_id 
GROUP BY departments.department_id, department_name 
ORDER BY department_name;
