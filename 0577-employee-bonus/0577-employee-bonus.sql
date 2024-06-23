# Write your MySQL query statement below
SELECT e.name, b.bonus
FROM employee e 
LEFT JOIN 
bonus b
ON b.empid=e.empid
WHERE IFNULL(b.bonus,0) <1000