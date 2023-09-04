--Оцінки студентів у певній групі з певного предмета на останньому занятті.

SELECT s.fullname as student, grd.grade, grp.name as group_name, d.name as subject, MAX(grd.date_of)
from students s 
join grades grd on s.id = grd.student_id 
join groups grp on s.group_id = grp.id 
join disciplines d on grd.discipline_id = d.id 
WHERE grp.id = 3 AND d.id = 3