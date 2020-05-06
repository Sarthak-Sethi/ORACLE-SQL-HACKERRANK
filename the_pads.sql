/*  1 st method*/
select name ||
case
when occupation = 'Doctor' then '(D)'
when occupation = 'Professor' then '(P)'
when occupation = 'Singer' then '(S)'
when occupation = 'Actor' then '(A)'
end
from occupations 
order by name asc;

select 'There are a total of ' || count(*) || ' doctors.' 
from occupations 
where occupation='Doctor';

select 'There are a total of ' || count(*) || ' actors.' 
from occupations 
where occupation='Actor';

select 'There are a total of ' || count(*) || ' singers.' 
from occupations 
where occupation='Singer';

select 'There are a total of ' || count(*) || ' professors.' 
from occupations 
where occupation='Professor';

/*2 nd  method*/
SELECT 
CONCAT(
    NAME,
    CASE 
       WHEN UPPER(Occupation)='DOCTOR' THEN '(D)' 
       WHEN UPPER(Occupation)='ACTOR' THEN '(A)' 
       WHEN UPPER(Occupation)='PROFESSOR' THEN '(P)' 
       ELSE '(S)' 
       END
      ) 
      FROM Occupations
      order by name asc;
     
SELECT 
'There are a total of ' || COUNT(*) || ' doctors.' 
    FROM Occupations 
    WHERE Occupation ='Doctor';
    
SELECT 
'There are a total of ' || COUNT(*) || ' actors.' 
    FROM Occupations 
    WHERE Occupation ='Actor'; 
    
SELECT 
'There are a total of ' || COUNT(*) || ' singers.' 
    FROM Occupations 
    WHERE Occupation ='Singer';
    
SELECT 
'There are a total of ' || COUNT(*) || ' professors.' 
    FROM Occupations 
    WHERE Occupation ='Professor';






