import sqlite3
from random import randint, choice
from  faker import Faker


def create_db():
    with open('init.sql', 'r') as f:
        sql = f.read()

    with sqlite3.connect('homework06.db') as con:
        cur = con.cursor()
        cur.executescript(sql)

def insert_data_to_db():
    fake_data = Faker()
    fake_groups = [fake_data.company() for _ in range(3)]
    fake_students = [fake_data.name() for _ in range(30)]
    fake_teachers = [fake_data.name() for _ in range(5)]
    fake_subjects = ['English', 'Physics', 'Chemistry',
                     'Math', 'Ukrainian language', 'Geography', 'Biology']
    with sqlite3.connect('homework06.db') as con:
        cur = con.cursor()
        for group_name in fake_groups:
            cur.execute(
                "INSERT INTO Groups (name) VALUES (?)", (group_name,))

        for student_name in fake_students:
            cur.execute(
                "INSERT INTO Students (fullname, group_id) VALUES (?,?)", (student_name, randint(1, 3),))

        for teacher_name in fake_teachers:
            cur.execute(
                "INSERT INTO Teachers (fullname) VALUES (?)", (teacher_name,))

        for subject in fake_subjects:
            cur.execute(
                "INSERT INTO Disciplines (name,teacher_id) VALUES (?,?)", (subject, randint(1, 5),))

        for student_id in range(1, 31):
            for subject in fake_subjects:
                for subject_id in range(1, 8):
                    num_of_grades = randint(1, 20)
                    for _ in range(num_of_grades):
                        grade = randint(1, 12)
                        date = fake_data.date()
                        query = "INSERT INTO Grades(student_id,discipline_id,grade,date_of) VALUES (?,?,?,?)"
                        cur.execute(
                            query, (student_id, subject_id, grade, date))
