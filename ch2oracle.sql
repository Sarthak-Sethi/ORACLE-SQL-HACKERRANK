select * from employees where job_id='IT_PROG';
select * from employees where salary>5000;
select * from employees where salary between 7000 and 10000;
select * from employees where salary NOT between 7000 and 10000;
select * from employees where job_id in ('IT_PROG','SA_REP','ST_CLERK');
select * from employees where job_id NOT in ('IT_PROG','SA_REP','ST_CLERK');

select DEPARTMENT_NAME from 
(select DEPARTMENT_NAME from departments 
where SUBSTR(DEPARTMENT_NAME,1,1)='A' 
OR SUBSTR(DEPARTMENT_NAME,1,1)='B');

select * from departments where department_name like 'S%';
select * from departments where department_name like '%et%';
select * from departments where department_name like '_arketin_';

select * from employees where JOB_ID is null;
select * from employees where commission_pct is not null;
select * from employees order by first_name desc;

select * from employees order by department_id,salary desc;

select * from employees order by 3;
select employee_id,job_id,salary from employees order by 3;
select employee_id,job_id,salary,salary+50 annsal from employees order by annsal;
