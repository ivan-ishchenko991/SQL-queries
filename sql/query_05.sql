-- Знайти, які курси читає певний викладач.

SELECT t.fullname, d.name as subject
from disciplines as d 
join teachers t  on d.teacher_id  = t.id
WHERE t.id = 4