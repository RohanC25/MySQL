-- SQL Set_2 Que 6 Ans

select emp_no,CONCAT(first_name,' ',last_name) as full_name,salary,hire_date,
timestampdiff(Month,hire_date,current_date) as Total_months_hired from emp
where salary>2000
having Total_months_hired < 36 order by salary desc;


-- Que 7 Ans

select deptno, sum(salary) as total_salary from employee
group by deptno order by deptno;

-- Que 8 Ans

select name as city, population from city
where population > 100000;
select count(name) as 'Total cities with population more than 100K' 
from city where population >100000;

-- Que 9 Ans

select district,sum(population) as 'total_population' from city
where district = 'California';

-- Que 10 Ans

select distinct(district), avg(population) as 'Avg_population'
from city group by district order by district;

-- Que 11 Ans

select o.ordernumber, o.status, o.customernumber, c.customername, o.comments
from orders as o JOIN customers as c USING(customernumber)
where o.status = 'Disputed';









