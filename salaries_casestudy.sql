use data_new;
-- 1 show all the columns and rows in the table

select * from salaries;

-- 2 Show only the employeename and job title columns

select EmployeeName,JobTitle from salaries;

-- 3 Show the number of employees in the table

select count(Id) from salaries;

-- 4 Unique job titles in the table

select distinct Jobtitle from salaries;

-- 5 Show the job title and overtimepay for all the employees with overtime pay greater than 50000

select jobtitle,overtimepay from salaries 
where overtimepay > 50000;

-- 6 Show the average base pay for all the employees

select avg(basepay) as AvgBasePay from salaries;

-- 7 show the top 10 highest paid employees

select Employeename,TotalPay from salaries 
order by TotalPay desc
limit 10;

-- 8 Show the average of BasePay, overtimepay and other pay of each employee

select Employeename,(basepay+overtimepay+otherpay)/3 as AvgPay
from salaries;

-- 8 Show all the employees who have the word "Manager" in their job title

select Employeename,jobtitle from salaries 
where jobtitle regexp 'Manager';

-- 8 Show all the employees who not have the word "Manager" in their job title
select Employeename,jobtitle from salaries 
where jobtitle not regexp 'Manager';

-- 8 Show all the employees whose job title not equal to manager

select Employeename,jobtitle from salaries
where jobtitle <> 'Manager';

 -- 9 Show all the employees with totalpay between 50000 and 75000
 
 select Employeename,totalpay from salaries 
 where totalpay between 50000 and 75000;
 
 -- 10 show all the employees with basepay less then 50000 and or total pay greater than 100000
 
 select employeename,basepay,totalpay from salaries
 where basepay < 50000 or totalpay >100000;
 
 -- 11 show all the employees with totalpay benefit value 
 -- between 120000 and 150000 and the job title containing the word "Director".
 
 select employeename,totalpaybenefits,jobtitle from salaries 
 where totalpaybenefits between 120000 and 150000 and jobtitle regexp 'Director';
 
 -- 12 show all employees ordered by their totalpaybenefits in descending order
 
 select employeename,totalpaybenefits from salaries 
 order by totalpaybenefits desc;
 
 -- 13 show all the job titles with an average basepay of atleaset 100000 and order them by the average basepay in desc order
 
 select jobtitle,avg(basepay) as Avgbasepay from salaries
 group by jobtitle 
 having Avgbasepay >= 100000
 order by Avgbasepay desc;
 
 -- 14 delete the column
 
alter table salaries
drop column notes;

-- 15 update the basepay of all employees with the jobtitle containing "manager" by increasing it by 10%.

set sql_safe_updates=0;

update salaries
set basepay = 1.1 * basepay
where jobtitle regexp "Manager";

-- 16 Delete all employees who have no overtimepay 

select count(*) from salaries
where overtimepay = 0;

delete from salaries
where overtimepay = 0;





 
 





