-- Problem Statement
--Write a solution to find the second highest distinct salary from the Employee table. If there is no second highest salary, return null (return None in Pandas).
--The result format is in the following example.
-- QUERY
/* Write your PL/SQL query statement*/
select max(salary) as SecondHighestSalary from employee
where salary<(select max(salary) from employee);
