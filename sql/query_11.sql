--Середній бал, який певний викладач ставить певному студентові.

SELECT s.fullname, AVG(g.grade) , d.name as discipline, t.fullname as teacher
from students s 
join grades g on s.id = g.student_id 
join disciplines d on g.discipline_id  = d.id 
join teachers t on t.id = d.teacher_id 
WHERE s.id = 10 AND t.id = 4
GROUP BY d.name 