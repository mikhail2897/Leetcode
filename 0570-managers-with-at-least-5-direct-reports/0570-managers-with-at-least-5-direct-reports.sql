# Write your MySQL query statement below
select name 
from employee e
join (select count(id) as cnt, managerId from employee where managerId is not NULL group by managerId) as a
on e.id = a.managerId
where cnt >= 5