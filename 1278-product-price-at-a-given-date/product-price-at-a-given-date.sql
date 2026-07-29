# Write your MySQL query statement below

SELECT product_id , new_price AS price
FROM Products
WHERE (product_id , change_date) IN (
    SELECT product_id , MAX(change_date)   #part-1
    FROM Products
    WHERE change_date <=  '2019-08-16'
    GROUP BY product_id
)
UNION 
SELECT product_id , 10 AS price
FROM Products
WHERE product_id NOT IN (
    SELECT product_id                      #part-2
    FROM products
    WHERE change_date <=  '2019-08-16'
)







-- 2019-08-16
-- Products table:
-- +------------+-----------+-------------+
-- | product_id | new_price | change_date |
-- +------------+-----------+-------------+
-- | 1          | 20        | 2019-08-14  |
-- | 2          | 50        | 2019-08-14  |
-- | 1          | 30        | 2019-08-15  |
-- | 1          | 35        | 2019-08-16  |
