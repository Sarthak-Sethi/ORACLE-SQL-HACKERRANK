select   COUNTRY.Continent,floor(avg(CITY.Population)) from city
join country on  COUNTRY.Code = CITY.CountryCode 

GROUP BY country.continent;