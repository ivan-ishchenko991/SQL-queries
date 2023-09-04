--Знайти список студентів у певній групі.

SELECT s.fullname, g.name as group_name
from students s 
join groups g on s.group_id = g.id 
WHERE g.id = 3