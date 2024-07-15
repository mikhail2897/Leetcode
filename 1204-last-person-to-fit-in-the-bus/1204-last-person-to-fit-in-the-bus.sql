# Write your MySQL query statement below
WITH cte AS (
    SELECT *, 
           SUM(weight) OVER (ORDER BY turn) AS total_weight  -- Calculates cumulative sum of weight
    FROM queue  
    GROUP BY turn, person_id  -- Groups by turn and person_id
    ORDER BY turn  -- Orders by turn
),

-- CTE cte2: Selects rows where total_weight <= 1000 and orders by turn in descending order
cte2 AS (
    SELECT turn, person_name, total_weight  -- Selects turn, person_name, and total_weight
    FROM cte 
    WHERE total_weight <= 1000  -- Filters rows where total_weight is less than or equal to 1000
    ORDER BY turn DESC  -- Orders by turn in descending order
)

-- Main query: Selects the person_name from cte2 and limits the result to 1 row
SELECT person_name 
FROM cte2 
LIMIt 1;