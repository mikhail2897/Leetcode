# Write your MySQL query statement below
with cte as (
    select *, dense_rank() over(partition by departmentId order by salary desc) as rnk
    from employee
)
select d.name as Department, c.name as Employee, c.salary as Salary
from cte c
join department d
on c.departmentId = d.id
where rnk = 1 