 select * from employee;
 select empid, CONCAT(fname,' ',lname) as emp_name,deptno, salary from employee
 where deptno = 10 having salary > 3000;

select * from students;

alter table students
add column Grade varchar(20);
UPDATE students SET Grade = CASE
		when marks between 40 and 50 then 'Second Class'
        when marks between 50 and 60 then 'First Class'
        when marks between 60 and 80 then 'First Class'
        when marks between 80 and 100 then 'Distinction'
        ELSE 'Failed'
        END;
        select count(Grade) as 'Students passed with First Class'
        from students
        where Grade = 'First Class';
        
        select count(Grade) as 'Students passed with Distinction'
        from students
        where Grade = 'Distinction';
    
