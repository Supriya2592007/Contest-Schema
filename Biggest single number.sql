-- Problem Statement
--A single number is a number that appeared only once in the MyNumbers table.
--Find the largest single number. If there is no single number, report null.
--The result format is in the following example.

 -- QUERY
/* Write your PL/SQL query statement below */
select max(num) as num from mynumbers
where  num in (select num from mynumbers
group by num
having count(num)=1);
