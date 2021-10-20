-- Table: ActorDirector

-- +-------------+---------+
-- | Column Name | Type    |
-- +-------------+---------+
-- | actor_id    | int     |
-- | director_id | int     |
-- | timestamp   | int     |
-- +-------------+---------+
-- timestamp is the primary key column for this table.
 

-- Write a SQL query for a report that provides the pairs (actor_id, director_id) where the actor has cooperated with the director at least three times.

-- Return the result table in any order.

-- The query result format is in the following example.
# Write your MySQL query statement below
select actor_id, director_id
from ActorDirector
group by actor_id, director_id
having count(concat(actor_id, director_id))>2