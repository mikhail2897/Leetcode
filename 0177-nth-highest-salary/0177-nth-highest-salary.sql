CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
 RETURN (
     with cte1 as (
    select salary, dense_rank() over(order by salary desc) as rnk
    from employee
)
select 
case when max(rnk) >= N then (select salary from cte1 where rnk = N limit 1) else NULL end as n_sal
from cte1
 );
END