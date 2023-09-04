-- Знайти середній бал у групах з певного предмета.

SELECT grp.name, AVG(grd.grade) as average_grade
from groups grp
join students s on grp.id = s.group_id 
join grades grd on s.id = grd.student_id 
WHERE grd.discipline_id = 3
GROUP BY grp.name 
ORDER BY average_grade DESC 