-- Знайти студента із найвищим середнім балом з певного предмета.

SELECT s.fullname, d.name, AVG(g.grade) as average_grade
from students s 
join grades g on s.id = g.student_id
join disciplines d on g.discipline_id = d.id 
WHERE d.id = 1
GROUP BY s.fullname 
ORDER BY average_grade DESC 
LIMIT 1;