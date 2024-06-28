# Write your MySQL query statement below
select name
from salesPerson
where sales_id not in (select s.sales_id
from salesperson s
left join orders o on s.sales_id = o.sales_id
left join company c on o.com_id = c.com_id
where c.name = 'RED')