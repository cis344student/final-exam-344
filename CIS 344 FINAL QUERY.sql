use teachers_portal;
create table students
(
	studentId int not null unique auto_increment,
    studentName varchar (45) Not Null,
	enrolledInCourseID int default 1,
	grade float null
);

create table courses
(
	courseId int not null unique auto_increment,
    courseName varchar (45) not null
);

insert into students(studentName, enrolledInCourseID, grade)
values 	("Maria Jozef", 1, 90), 
		("Linda Jones", 2, 89), 
		("John McGrail", 1, 98), 
        ("Patty Luna", 2, 78);
        
insert into courses(courseName)
values 	("Database Design"),
		("Calculus"),
        ("Physics");
        
create procedure studentsWithGrade()
Select * From students
Left outer join courses
ON enrolledInCourseID = courseID;


	