-- Problem Statement
--Each node in the tree can be one of three types:
--"Leaf": if the node is a leaf node.
--"Root": if the node is the root of the tree.
--"Inner": If the node is neither a leaf node nor a root node.
--Write a solution to report the type of each node in the tree.
--Return the result table in any order.
--The result format is in the following example.

-- QUERY 
select id,
case 
when id in (select p_id from tree)  and p_id is not null then 'Inner'
when   p_id is  null then 'Root'
else  'Leaf'
end as type
from tree;
