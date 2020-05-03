SELECT CITY,LENGTH(CITY) FROM () 
WHERE LENGTH(CITY) = (SELECT MAX(LENGTH(CITY)) FROM STATION WHERE ROWNUM = 1) order by CITY DESC;
SELECT CITY,LENGTH(CITY) FROM STATION WHERE LENGTH(CITY) = (SELECT MIN(LENGTH(CITY)) FROM STATION) order by CITY ASC WHERE ROWNUM=1;


select * from employees;

select employee_id,job_id,salary
from employees;

select employee_id,job_id,salary,salary+50
from employees;

select employee_id,job_id,salary,10*(salary+10)
from employees;

select employee_id,job_id,salary,10*salary+10
from employees;

select employee_id,job_id,salary,commission_pct
from employees;

select employee_id,job_id,salary,10*commission_pct
from employees;

SELECT FIRST_NAME FROM EMPLOYEES WHERE FIRST_NAME =(SELECT MAX(LENGTH(FIRST_NAME)) FROM EMPLOYEES);

select * from employees;
select employee_id,first_name||' '||last_name as "Customer Name"
from employees;

select employee_id,first_name||' is a  '||job_id as "Customer Name"
from employees;
select * from departments;

select department_name||q'< department's manager id is >'||manager_id from departments;

DESCRIBE EMPLOYEES;


select * from employees;


select distinct job_id from employees;

describe employees;