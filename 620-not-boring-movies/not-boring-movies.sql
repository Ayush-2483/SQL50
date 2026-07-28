# Write your MySQL query statement below
SELECT c1.id , c1.movie , c1.description , c1.rating
FROM Cinema c1
JOIN Cinema c2
ON c1.id = c2.id
WHERE c1.id % 2 !=0 AND c1.description <> 'boring'
ORDER BY c2.rating DESC;



-- | id | movie      | description | rating | id | movie      | description | rating |
-- | -- | ---------- | ----------- | ------ | -- | ---------- | ----------- | ------ |
-- | 1  | War        | great 3D    | 8.9    | 1  | War        | great 3D    | 8.9    |
-- | 2  | Science    | fiction     | 8.5    | 2  | Science    | fiction     | 8.5    |
-- | 3  | irish      | boring      | 6.2    | 3  | irish      | boring      | 6.2    |
-- | 4  | Ice song   | Fantacy     | 8.6    | 4  | Ice song   | Fantacy     | 8.6    |
-- | 5  | House card | Interesting | 9.1    | 5  | House card | Interesting | 9.1    |