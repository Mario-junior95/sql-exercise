#Creat table students

CREATE TABLE "sudents" (
	"ID"	INTEGER NOT NULL,
	"Name"	TEXT NOT NULL UNIQUE,
	"Age"	INTEGER,
	"Gender"	TEXT,
	"Points"	INTEGER,
	PRIMARY KEY("ID" AUTOINCREMENT)
);

#Insert Values inside sudents table
INSERT INTO students (ID,Name,Age,Gender,Points) VALUES (1,"Alex",35,"Male",50);
INSERT INTO students (ID,Name,Age,Gender,Points) VALUES (2,"Basma",21,"Female",70);
INSERT INTO students (ID,Name,Age,Gender,Points) VALUES (3,"Elias",23,"Male",30);
INSERT INTO students (ID,Name,Age,Gender,Points) VALUES (4,"Rana",33,"Female",40);
INSERT INTO students (ID,Name,Age,Gender,Points) VALUES (5,"Tracy",29,"Female",90);

#1. Get all the names of students in the database 
SELECT *
FROM sudents;

#2. Get all the data of students above 30 years old 
SELECT *
FROM students
WHERE Age > 30;

#3. Get the names of the females who are 30 years old
SELECT Gender , age
FROM students
WHERE Gender="Female" and age > 30;

#4. Get the number of Points of Alex 
SELECT Points
FROM students
WHERE  Name = "Alex";

#5. Add yourself as a new student (your name, your age...) 
INSERT INTO students (ID,Name,Age,Gender,Points) VALUES (6,"Mario-junior",25,"Male",60);

# 6. Increase the points of Basma because she solved a new exercise 
UPDATE students 
SET Points= Points+30 
WHERE name="Basma";

#7. Decrease the points of Alex because he's late today
UPDATE students 
SET Points= Points-30 
WHERE name="Alex";



 
