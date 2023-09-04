--Знайти список курсів, які відвідує студент.

SELECT s.fullname, d.name as discipline
from students s 
join grades g on s.id = g.student_id 
join disciplines d on g.discipline_id  = d.id 
WHERE s.id = 5
GROUP BY d.name 