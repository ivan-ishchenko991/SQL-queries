# from repository import select


class Teacher:
    TABLE_NAME = 'teachers'
    def __init__(self, teacher_id: int, fullname: str):
        self.teacher_id = teacher_id
        self.fullname = fullname

class Group:
    TABLE_NAME = 'groups'
    def __init__(self, id: int, name: str):
        self.id = id
        self.name = name

class Student:
    TABLE_NAME = 'students'
    def __init__(self, fullname: str, student_id: int, group_id: int):
        self.student_id = student_id
        self.fullname = fullname
        self.group_id = group_id

class Discipline:
    TABLE_NAME = 'disciplines'
    def __init__(self, id: int, name: str, teacher_id: int):
        self.id = id
        self.name = name
        self.teacher_id = teacher_id

class Grade:
    TABLE_NAME = 'grades'
    def __init__(self, id: int, grade: str, date_of, student_id: int, discipline_id: int):
        self.id = id
        self.grade = grade
        self.date_of = date_of
        self.student_id = student_id
        self.discipline_id = discipline_id
