show databases;
DROP database COMPANY;
CREATE database COMPANY;
USE COMPANY;



CREATE TABLE EMPLOYEEINFO(
ID int NOT NULL auto_increment PRIMARY KEY,
EMP_NAME varchar(20) NOT null,
ADDRESS varchar(30) NOT NULL,
CITY varchar(12) NOT NULL,
AGE INT NOT NULL,
DOJ date NOT NULL,
DESIGNATION varchar(40) NOT NULL,
SALARY decimal(12, 2) NOT NULL,
MOBILE_NO varchar(10) NOT NULL);
SELECT *FROM EMPLOYEEINFO;
DROP table EMPLOYEEINFO;
ALTER table EMPLOYEEINFO
ADD EMAIL varchar(23);

ALTER table EMPLOYEEINFO
DROP EMAIL;

insert INTO EMPLOYEEINFO ( EMP_NAME, ADDRESS, CITY, AGE, DOJ, DESIGNATION, SALARY, MOBILE_NO)
VALUES ( 'SACHIN', '12 WAZIRABAD', 'MZN', 18, '22-02-2', 'WEB', 4500000, '223');
insert INTO EMPLOYEEINFO ( EMP_NAME, ADDRESS, CITY, AGE, DOJ, DESIGNATION, SALARY, MOBILE_NO)
VALUES ( 'SACHIN', '12 WAZIRABAD', 'MZN', 18, '22-02-2', 'WEB', 4500000, '223');
insert INTO EMPLOYEEINFO ( EMP_NAME, ADDRESS, CITY, AGE, DOJ, DESIGNATION, SALARY, MOBILE_NO)
VALUES ( 'SACHIN', '12 WAZIRABAD', 'MZN', 18, '22-02-2', 'WEB', 4500000, '223');
insert INTO EMPLOYEEINFO ( EMP_NAME, ADDRESS, CITY, AGE, DOJ, DESIGNATION, SALARY, MOBILE_NO)
VALUES ( 'SACHIN', '12 WAZIRABAD', 'MZN', 18, '22-02-2', 'WEB', 4500000, '223');
insert INTO EMPLOYEEINFO ( EMP_NAME, ADDRESS, CITY, AGE, DOJ, DESIGNATION, SALARY, MOBILE_NO)
VALUES ( 'SACHIN', '12 WAZIRABAD', 'MZN', 18, '22-02-2', 'WHH', 80000, '223');
select  emp_name , mobile_no from employeeinfo;

select CITY FROM EMPLOYEEINFO;

select emp_name, mobile_no
from employeeinfo
where designation='whh';
select *from employeeinfo;

update employeeinfo
set address='chhroli'
where id=5;

update employeeinfo
set emp_name='nazim'
where id=4;

update employeeinfo
set emp_name='kartik'
where id=5;

delete from employeeinfo
where id=4;

select id , emp_name
from employeeinfo
where designation ='whh' and age=18;
 
 select id, emp_name
 from employeeinfo
 where designation='web' or age=18;
 
 select id, emp_name, city
 from employeeinfo
 where not DESIGNATION='WEB';


select *from employeeinfo
where city like 'm%';
 

select *from employeeinfo
where DESIGNATION like '%h';
 
 SELECT *from  employeeinfo
 WHERE MOBILE_NO LIKE '__3%';
 
 select *from employeeinfo
 where DESIGNATION  NOT LIKE '%B'
 
 select *from employeeinfo
 where DESIGNATION IN ('WHH','WEB');
  
  select *from employeeinfo
  where DESIGNATION NOT IN('WEB');
 
  select *from employeeinfo
 where salary between 50000 and 80000;
  
  select *from employeeinfo
  where id between 3 and 5;
  
  select  *from employeeinfo
  limit 3;
  
  select *from employeeinfo
  order by salary; 
  
  select *from employeeinfo
  order by emp_name, salary;
  
  select *from employeeinfo
  order by id desc;
  
  select count(emp_name)
  from employeeinfo;
    
    select sum(salary)
    from employeeinfo;
    
    select avg(salary)
    from employeeinfo;
    
    select emp_name, min(salary) as lowestsalary
    from employeeinfo;
    
     select emp_name, max(salary) as highstsalary
    from employeeinfo;
    
  