--Знайти оцінки студентів в окремій групі з певного предмета.

SELECT s.fullname, d.name as discipline, grd.grade, g.name as group_name
from students s 
join groups g on s.group_id = g.id 
join grades grd ON s.id = grd.student_id 
join disciplines d on grd.discipline_id = d.id 
WHERE g.id = 3 AND d.id = 2
ORDER BY s.fullname  