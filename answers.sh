#Creat table students

CREATE TABLE "students" (
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
INSERT INTO students (ID,Name,Age,Gender,Points) VALUES (5,"Layal",29,"Female",90);

#1. Get all the names of students in the database 
SELECT Name
FROM sudents;

#2. Get all the data of students above 30 years old 
SELECT *
FROM students
WHERE Age > 30;

#3. Get the names of the females who are 30 years old
SELECT Gender , age
FROM students
WHERE Gender="Female" and age = 30;

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



#Creat a table graduates 

CREATE TABLE "graduates" (
	"ID"	INTEGER NOT NULL,
	"Name"	TEXT NOT NULL UNIQUE,
	"Age"	INTEGER,
	"Gender"	TEXT,
	"Points"	INTEGER,
	"Graduation" TEXT,
	PRIMARY KEY("ID" AUTOINCREMENT)
);

#1.Copy Layal's data from students to graduates
INSERT INTO graduates (ID,Name,Age,Gender,Points)
SELECT *,
FROM students,
WHERE Name = "Layal";

#2.Add the graduation date previously mentioned to Layal's record in graduates
INSERT INTO graduates (Graduation) VALUES ("08/09/2018");

#3.Remove Layal's record from students
DELETE FROM students 
WHERE Name="Layal";

#Joins
#1.Produce a table that contains, for each employee, his/her name, company name, and company date.

SELECT e.Name,e.Company,Date 
FROM employees as e JOIN companies as c on e.Company = c.Name;

#2.Find the name of employees that work in companies made before 2000.
SELECT employees.Name 
FROM employees JOIN companies on Date<2000 AND employees.Company = companies.Name;

#3.Find the name of company that has a graphic designer.
SELECT Company FROM employees WHERE Role like 'Graphic Designer'
GROUP by Company HAVING employees.Company in(
	                                         SELECT name 
											 FROM companies);

#Count & Filter
#1.Find the person with the highest number of points in students
SELECT Name , MAX(Points) as largestPoints
FROM students;

#2.Find the average of points in students
SELECT AVG(Points) as averagePoints,
FROM students;

#3.Find the number of students that have 500 points
SELECT count(Name) 
FROM students 
WHERE Points ="500";

#4.Find the names of students that contains 's'
SELECT Name 
From students 
WHERE Name="%s%";

#5.Find all students based on the decreasing order of their points
SELECT Name, Points 
FROM students 
order by Points;