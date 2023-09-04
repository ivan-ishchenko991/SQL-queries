--Знайти середній бал, який ставить певний викладач зі своїх предметів.

SELECT t.fullname as teacher, d.name as discipline, AVG(g.grade) as avg_grade
from teachers t 
join disciplines d on t.id = d.teacher_id 
join grades g on d.id = g.discipline_id 
WHERE t.id = 5
GROUP BY d.id 