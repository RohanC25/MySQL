select * from emp;
alter table emp
add column dept_no INT;
alter table emp rename column emp_no to emp_id;
UPDATE emp SET dept_no = 
case 
when emp_id % 2 = 0 then 20 
when emp_id % 3 = 0 then 30
when emp_id % 4 = 0 then 40
when emp_id % 5 = 0 then 50
else 10
end;

select * from emp;

create UNIQUE INDEX emp_uni on emp (emp_id);

show index from emp;

alter table emp rename column emp_id to emp_no;

create view emp_sal as select emp_no, CONCAT(first_name,' ',last_name) as employee,
 salary from emp order by salary desc;
 
 select * from emp_sal;

