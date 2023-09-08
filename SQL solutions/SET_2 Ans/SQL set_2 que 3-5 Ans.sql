-- Que 3 Answer
select * from station where id % 2 = 0;

select *, count(*) as CNT
from station
where id % 2 = 0 
GROUP BY id, city, state, lat_n, long_w
having CNT = 1;

select * from station where id % 2 = 0 
group by id, city, state, lat_n, long_w
having COUNT(*) = 1;

-- Que 4 Answer
select count(city) - count(distinct city) as 'Difference between total cities and distinct cities'
from station;

-- Que 5 Answer
select distinct CONCAT(LEFT(city,1), SUBSTRING(city,2,char_length(city)-1)) as 
'Cities starting with Vowel' from station
where LEFT(city,1) In('a','e','i','o','u');

select distinct concat(left(city,1), substring(city,2,char_length(city)-2), RIGHT(city,1)) 
as result from station 
where (LEFT(city,1)) In('a','e','i','o','u') and (RIGHT(city,1)) In('a','e','i','o','u');

select distinct CONCAT(LEFT(city,1), SUBSTRING(city,2,char_length(city)-1))
 as 'Cities do not starting with Vowel' from station
where LEFT(city,1) Not In('A','E','I','O','U');

select distinct concat(left(city,1), substring(city,2,char_length(city)-2), RIGHT(city,1)) 
as result from station 
where (LEFT(city,1)) Not In('a','e','i','o','u') and (RIGHT(city,1)) Not In('a','e','i','o','u');

