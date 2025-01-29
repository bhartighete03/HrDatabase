show databases;
use hr_database;
show tables;
desc employees;
desc departments;
select * from employees;
select employee_id,first_name,last_name,hire_date,salary
from employees;

select employee_id,first_name,last_name,hire_date,salary
from employees
where department_id=60;


select employee_id,first_name,last_name,hire_date,salary
from employees
where last_name="Hunold";

select employee_id,first_name,last_name,hire_date,salary
from employees
where hire_date="1990-01-03";

select employee_id,first_name,last_name,hire_date,salary
from employees;

select employee_id,first_name,last_name,hire_date,salary
from employees
#where hire_date="01-03-90";
 where hire_date="90-01-03";
 
select employee_id,first_name,last_name,hire_date,salary
from employees
where salary<9000;

select employee_id,first_name,last_name,hire_date,salary
from employees
where salary>=9000 and salary <=15000;

select employee_id,first_name,last_name,hire_date,salary
from employees
where salary between 9000 and 15000;

select employee_id,first_name,last_name,hire_date,salary
from employees
where salary not between 9000 and 15000;

select employee_id,first_name,last_name,hire_date,salary
from employees
where hire_date between '1997-01-01' and '1997-12-31'
order by hire_date;
SELECT NOW();

select employee_id,first_name,last_name,hire_date,salary,email
from employees
where last_name like 'a%' or last_name like 'b%';

select employee_id,first_name,last_name,hire_date,salary
from employees
where last_name like '%er%';

select employee_id,first_name,last_name,hire_date,salary,email
from employees
where email like '%@gmail.com';

select employee_id,first_name,last_name,hire_date,salary
from employees
where last_name  between 'A%' and 'd%'
order by hire_date;

select employee_id,first_name,last_name,hire_date,salary
from employees
where salary<9000;


select employee_id,first_name fname,last_name lname,
hire_date as JoinDate,department_id,salary,salary*12 annual_salary
from employees
order by department_id,annual_salary desc;

select distinct department_id from employees;

select 1000+560 as "MyCal" from dual;

select current_date() from dual;

describe dual;


select * from employees
where job_id='IT_PROG' or salary>5000;

select * from employees
where COMMISSION_PCT IS NULL;



select * from employees
where COMMISSION_PCT IS not  NULL;


select * from employees
where last_name like '%r';

select 2+6,8*2 ,18/9 ,15%2 from dual;


select * from employees
where department_id <>80
order by department_id;

select * from employees
where job_id in ('SA_REP','IT_PROG','SA_MAN');

select  employee_id,last_name,salary
from employees
order by salary desc limit 4;

select salary
from  (select distinct salary salary
	   from employees 
       order by salary desc limit 4) as employee
order by salary desc;






create table orders
(orderid int primary key,
custmerid int,
orderdate date);

desc orders;
describe orders;
use bhartiw;
show tables;

create table dept1
(department_id int primary key,
department_name varchar(30));

create table emp1
(employee_id int primary key,
ename varchar(30) not null,
salary decimal(8,2) check (salary>15000),
hire_date date,
department_id int ,
foreign key (department_id) references dept1(department_id));

alter table emp1 add email varchar(30) unique;

insert into emp1 values(100,'Amit',18000,current_date(),10);
insert into emp1 values(102,'Sumit',19000,current_date(),10,'sumit1@gamil.com');
insert into dept1 values(10,'Admin');
select * from emp1;
select * from dept1;

select * from information_schema.table_constraints
where table_name in ('emp1','dept1');

select upper('Welcome to itvedant');
select lower('Welcome To Itvedant');
select substring('Welcome to itvedant',4,4);
select instr('Welcome to itvedant','e');
select replace('Welcome to itvedant','e','E');
select trim('   Welcome to    itvedant  ');

select now();
select current_date();
select current_time();
select current_timestamp();

select date_add('2025-01-24',Interval 1 Day);
select date_add('2025-01-24',Interval 1 week);
select date_add('2025-01-24',Interval 1 month);
select date_add('2025-01-24',Interval 1 year);

select employee_id,last_name,salary,hire_date,
date_add(hire_date,interval 6 month) "Revised Date"
from employees;

select date_add(current_date(),interval 1 day) ;
select date_add(current_date(),interval 1 week) ;
select date_add(current_date(),interval 1 month) ;

select employee_id,last_name,salary,hire_date,
(current_date()-hire_date) "Experience"
from employees;

select employee_id,ename,hire_date,current_date(),
 round(datediff(current_date,hire_date)/365) experience
from  emp1;

select employee_id,last_name,hire_date,current_date(),
 round(datediff(current_date,hire_date)/365) "experience in years"
from  employees;

update emp1
set hire_date='2023-01-01';
commit;
-- Return the largest integer value that is less than or equal to 25.75:
select round(67.455,2),round(67.355),floor(67.432),ceil(67.0);

select employee_id,last_name,e.department_id,department_name
from employees e join departments d
on(e.department_id=d.department_id);

select e.employee_id,e.last_name,e.manager_id,m.last_name
from employees e join employees m
on(e.manager_id=m.employee_id);

