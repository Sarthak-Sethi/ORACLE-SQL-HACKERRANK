select * from employees;

select city from station where
(CITY not like 'A%a') and (CITY not like 'A%e') and (CITY not like 'A%i') and (CITY not like 'A%o') and (CITY not like 'A%u') and
(CITY not like 'E%a') and (CITY not like 'E%e') and (CITY not like 'E%i') and (CITY not like 'E%o') and (CITY not like 'E%u') and
(CITY not like 'I%a') and (CITY not like 'I%e') and (CITY not like 'I%i') and (CITY not like 'I%o') and (CITY not like 'I%u') and
(CITY not like 'O%a') and (CITY not like 'O%e') and (CITY not like 'O%i') and (CITY not like 'O%o') and (CITY not like 'O%u') and
(CITY not like 'U%a') and (CITY not like 'U%e') and (CITY not like 'U%i') and (CITY not like 'U%o') and (CITY not like 'U%u');

/* (something) or(many ands) wos11 */
select DISTINCT city from station where
(CITY not like '%a') and (CITY not like '%e') and (CITY not like '%i') and (CITY not like '%o') and (CITY not like '%u') 
OR
((CITY not like 'A%') and (CITY not like 'E%') and (CITY not like 'I%') and (CITY not like 'O%') and (CITY not like 'U%'))
;
select first_name from employees where  REGEXP_LIKE (first_name,'^[^AEIOU]');
/
select first_name from employees where  REGEXP_LIKE(first_name, '^[aeiou]');

/* weather 19*/
select 
round(
    sqrt(
        power((max(long_w)-min(long_w)),2)+
        power((max(lat_n)-min(lat_n)),2)
        )
,4) 
from station;
/* */
select sum(salary)-sum(replace(to_char(salary),'0','')) from employees;
/*  top earners*/
select salary*months, count(*) from employee where salary*months=(select max(salary*months) 
from employee) group by salary*months;
/* wos 15*/
SELECT ROUND(LONG_W, 4)
FROM Station
WHERE LAT_N = (SELECT MAX(LAT_N) FROM Station WHERE LAT_N < 137.2345);
/* */
/* */
/* */
/* */

/* */
/* */
/* */





