create database bhartig;
use bhartig;
show tables;
select * from employees;
select * from departments;

create table emp
(employee_id int primary key,
ename varchar(30),
salary decimal(8,2),
job_id varchar(30),
department_id int references dept (department_id));


create table dept
(department_id int primary key,
department_name varchar(30));

select * from emp;
select * from dept;

delete from dept where department_id=10;

select @@foreign_key_checks;
desc information_schema.table_constraints;
select * from information_schema.table_constraints
where table_name in ('EMP','DEPT');

INSERT INTO emp
values(104,'Minu',16000,'IT_PROG',40);

set @@foreign_key_checks=1;

-- disable UNIQ, PK, ...
-- ALTER TABLE <tablename> DISABLE KEYS;

-- diable FK
-- SET FOREIGN_KEY_CHECKS=0;

/* to enable foregin key constraint */

/* SET FOREIGN_KEY_CHECKS=1;
ALTER TABLE <tablename> ENABLE KEYS; */

rollback;
select * from emp;
select * from dept;
INSERT INTO dept
values(10,'Admin');
INSERT INTO dept
values(20,'Sales');
commit;
update emp
set department_id=null
where employee_id=102;

alter table emp
add constraint deptid_fk foreign key (department_id) 
references dept(department_id);

alter table emp
enable keys;