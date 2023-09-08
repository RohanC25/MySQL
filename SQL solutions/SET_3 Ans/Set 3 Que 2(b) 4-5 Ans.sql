-- Que 2 (b) ans
select *,
     case
     when amount < 25000 then 'Silver'
     when amount between 25000 and 50000 then 'Gold'
     ELSE 'Platinum'
     END as status
     from payments;
     
     -- Que 4 Ans

with x as(select fname,salary, deptno, dense_rank() over(order by salary desc)
    as rnk from employee)
    select * from x where rnk = 3;


-- Que 5 Ans

select CONCAT((ifnull(fname,'-')),' ',(ifnull(lname,'-'))) as full_name, salary,
dense_rank() over(order by salary desc) as rnk
from employee;