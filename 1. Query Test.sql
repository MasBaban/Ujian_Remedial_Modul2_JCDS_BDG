-- no.1
select id, name, CountryCode, district, Population
from city
where countrycode = 'IDN'
limit 10;

-- no.2
SELECT id, name as nama_kota, district, population
from City
ORDER BY Population DESC 
LIMIT 10;

-- no.3
Select c.code, c.name, cl.language, cl.isofficial, cl. Percentage  
from country c
JOIN (countrylanguage cl) 
ON c.code = cl.countrycode
WHERE cl.Language = 'english'
ORDER BY cl.percentage DESC limit 10;

-- no.4
SELECT name, continent, lifeexpectancy, gnp 
from country
WHERE continent = 'asia' 
AND lifeexpectancy > (select AVG(lifeexpectancy) 
from country 
where continent = 'europe')
ORDER BY lifeexpectancy desc 
Limit 10;



