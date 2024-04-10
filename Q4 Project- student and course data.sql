USE sql_q4_project;

CREATE TABLE student_table ( studentId INT PRIMARY KEY ,
                             first_name VARCHAR(255) ,
                             last_name VARCHAR(255) ,
                             email VARCHAR(255),
                             year_of_joining INT
);

insert into student_table values(20131143,'Cynthia ','Voltz','Voltz01@gmail.com',2013);
insert into student_table values(20136677,'Jeremy ','Lonsdale','Lonsdale02@gmail.com',2013);
insert into student_table values(20146985,'Karl ','Braun','Braun04@gmail.com',2014);
insert into student_table values(20147007,'Maribeth ','Dona','Dona05@gmail.com',2014);
insert into student_table values(20146988,'Dennis ','Kane','Kane03@gmail.com',2014);
insert into student_table values(20147055,'Alyssa ','Tate','Tate06@gmail.com',2014);
insert into student_table values(20147058,'Greg ','Maxwell','Maxwell07@gmail.com',2014);
insert into student_table values(20147063,'Roy ','Collins','Collins08@gmail.com',2014);
insert into student_table values(20156165,'Shirley','Daniels','Daniels09@gmail.com',2015);
insert into student_table values(20156169,'Andrew ','Gjertsen','Gjertsen10@gmail.com',2015);
insert into student_table values(20156167,'Anthony ','Witt','Witt@gmail.com',2015);
insert into student_table values(20156201,'Maria ','Bertelson','Bertelson@gmail.com',2015);
insert into student_table values(20166222,'Tom ','Boeckenhauer','Boeckenhauer@gmail.com',2016);
insert into student_table values(20166242,'Ken ','Heidel','Heidel@gmail.com',2016);
insert into student_table values(20166211,'Anna ','Gayman','Gayman@gmail.com',2016);
insert into student_table values(20166260,'Ted ','Trevino','Trevino@gmail.com',2016);
insert into student_table values(20171723,'John ','Murray','Murray@gmail.com',2017);
insert into student_table values(20171727,'Stephanie ','Phelps','Phelps@gmail.com',2017);
insert into student_table values(20171730,'Dorothy ','Dickinson','Dickinson@gmail.com',2017);
insert into student_table values(20171741,'Liz ','Preis','Preis@gmail.com',2017);
insert into student_table values(20171757,'Ed',' Braxton','Braxton@gmail.com',2017);
insert into student_table values(20171772,'Darrin ','Sayre','Sayre@gmail.com',2017);
insert into student_table values(20189867,'Kelly ','Lampkin','Lampkin@gmail.com',2018);
insert into student_table values(20189877,'Susan ','Vittorini','Vittorini@gmail.com',2018);
insert into student_table values(20189878,'Ralph ','Ritter','Ritter@gmail.com',2018);
insert into student_table values(20189887,'David ','Wiener','Wiener@gmail.com',2018);
insert into student_table values(20189890,'Shui ','Tom','Tom@gmail.com',2018);
insert into student_table values(20191458,'Philip ','Brown','Brown@gmail.com',2019);
insert into student_table values(20191789,'Kunst ','Miller','Miller@gmail.com',2019);
insert into student_table values(20201348,'Michael',' Paige','Paige@gmail.com',2020);
insert into student_table values(20203478,'Vivian',' Mathis','Mathis@gmail.com',2020);
insert into student_table values(20209672,'Tamara ','Dahlen','Dahlen@gmail.com',2020);

-- creating course table:

CREATE TABLE course_table ( courseId INT PRIMARY KEY ,
                             courseName VARCHAR(255) ,
                             branches VARCHAR(255),
                             course_fees INT
);

-- inserting values into course table:

insert into course_table values (1,'illustrator',' design',999);
insert into course_table values (2,'photoshop',' design',999);
insert into course_table values (3,'indesign',' design',999);
insert into course_table values (4,'canva',' design',699);
insert into course_table values (5,'vector graphics',' design',699);
insert into course_table values (6,'blender',' design',2999);
insert into course_table values (7,'autocad',' design',699);
insert into course_table values (8,'sketchup',' design',1499);
insert into course_table values (9,'revit',' design',1499);
insert into course_table values (10,'financial analysis','finance and accounting',3499);
insert into course_table values (11,'cryptocurrency ','finance and accounting',3099);
insert into course_table values (12,'stock trading','finance and accounting',2899);
insert into course_table values (13,'algorithmic trading ','finance and accounting',2699);
insert into course_table values (14,'statistics','finance and accounting',2099);
insert into course_table values (15,'investment banking','finance and accounting',1999);
insert into course_table values (16,'block chain','finance and accounting',3499);
insert into course_table values (17,'python','data science',4299);
insert into course_table values (18,'sql','data science',3099);
insert into course_table values (19,'deep learning','data science',3699);
insert into course_table values (20,'R - programming','data science',2499);
insert into course_table values (21,'machine learning','data science',1299);
insert into course_table values (22,'natural language processing','data science',2799);
insert into course_table values (23,'artificial intelligence','data science',3499);
insert into course_table values (24,'chatgpt','digital marketing',2899);
insert into course_table values (25,'data analytics','digital marketing',2999);
insert into course_table values (26,'copywriting','digital marketing',799);
insert into course_table values (27,'sales funnel','digital marketing',3099);
insert into course_table values (28,'internet marketing','digital marketing',1999);
insert into course_table values (29,'social media marketing','digital marketing',1799);
insert into course_table values (30,'marketing strategy','digital marketing',2699);

-- creating instructor table:

CREATE TABLE instructor_table ( instructorId VARCHAR(255) PRIMARY KEY ,
                             first_name VARCHAR(255) ,
                             last_name VARCHAR(255) ,
                             email VARCHAR(255),
                             branches VARCHAR(255)
);

-- inserting values into instructor table:

insert into instructor_table values('IID01','Helen ','Wasserman','Wasserman@gmail.com',' design');
insert into instructor_table values('IID02','Lena ','Hernandez','Hernandez@gmail.com','finance and accounting');
insert into instructor_table values('IID03','Natalie ','Webber','Webber@gmail.com','data science');
insert into instructor_table values('IID04','Nathan ','Mautz','Mautz@gmail.com',' design');
insert into instructor_table values('IID05','Delfina ','Latchford','Latchford@gmail.com','finance and accounting');
insert into instructor_table values('IID06','Annie ','Zypern','Zypern@gmail.com','data science');
insert into instructor_table values('IID07','Chuck ','Clark','Clark@gmail.com','digital marketing');
insert into instructor_table values('IID08','Ken ','Lonsdale','Lonsdale@gmail.com','digital marketing');

-- creating enrollemnt table:

create table enrollment_table ( enrollemntId INT PRIMARY KEY ,
                             studentId INT,
                             courseId INT,
                             enrollmentDate DATE,
                             FOREIGN KEY (studentId) REFERENCES student_table(studentId),
                             FOREIGN KEY (courseId) REFERENCES course_table(courseId)
);

-- inserting values into enrollment table:

insert into enrollment_table values (1004,20131143,12,'2015-03-05');
insert into enrollment_table values (1001,20136677,14,'2013-02-09');
insert into enrollment_table values (1012,20147055,13,'2016-07-24');
insert into enrollment_table values (1005,20147058,1,'2015-03-12');
insert into enrollment_table values (1003,20147063,2,'2014-12-27');
insert into enrollment_table values (1007,20156165,22,'2016-04-16');
insert into enrollment_table values (1022,20156165,30,'2018-06-27');
insert into enrollment_table values (1016,20156167,24,'2017-10-18');
insert into enrollment_table values (1021,20166222,11,'2018-04-30');
insert into enrollment_table values (1017,20166242,30,'2017-12-22');
insert into enrollment_table values (1011,20166260,22,'2016-07-14');
insert into enrollment_table values (1028,20171723,17,'2019-10-15');
insert into enrollment_table values (1027,20189867,24,'2019-09-09');
insert into enrollment_table values (1033,20189877,30,'2020-01-31');
insert into enrollment_table values (1031,20189878,16,'2019-12-05');
insert into enrollment_table values (1023,20189887,11,'2018-11-17');
insert into enrollment_table values (1032,20189890,18,'2020-01-29');
insert into enrollment_table values (1038,20191458,28,'2021-10-25');
insert into enrollment_table values (1030,20191789,18,'2019-11-19');
insert into enrollment_table values (1008,20147063,30,'2016-04-28');
insert into enrollment_table values (1013,20156167,20,'2016-09-15');
insert into enrollment_table values (1024,20166211,30,'2019-03-04');
insert into enrollment_table values (1034,20171723,9,'2020-06-26');
insert into enrollment_table values (1018,20171757,5,'2018-03-02');
insert into enrollment_table values (1035,20189887,12,'2020-07-16');
insert into enrollment_table values (1006,20146985,4,'2015-09-13');
insert into enrollment_table values (1009,20131143,14,'2016-05-08');
insert into enrollment_table values (1014,20156201,4,'2016-11-11');
insert into enrollment_table values (1019,20166260,27,'2018-03-09');
insert into enrollment_table values (1026,20189878,25,'2019-08-28');
insert into enrollment_table values (1029,20171727,7,'2019-11-07');
insert into enrollment_table values (1037,20171730,10,'2020-12-17');
insert into enrollment_table values (1020,20171741,3,'2018-03-20');
insert into enrollment_table values (1025,20171757,25,'2019-07-30');
insert into enrollment_table values (1036,20171772,27,'2020-09-26');
insert into enrollment_table values (1002,20146985,7,'2014-04-21');
insert into enrollment_table values (1010,20146985,19,'2016-05-22');
insert into enrollment_table values (1015,20147007,17,'2017-02-14');
insert into enrollment_table values (1040,20201348,20,'2022-05-09');
insert into enrollment_table values (1041,20203478,26,'2022-08-25');
insert into enrollment_table values (1039,20209672,28,'2021-03-15');
insert into enrollment_table values (1042,20146988,8,'2022-10-30');
insert into enrollment_table values (1043,20156169,6,'2022-11-02');

-- QUERIES

-- 1. unique enrollment count i.e how many users purchased my course 

SELECT COUNT(DISTINCT studentId) AS unique_enrollment_count FROM enrollment_table; -- (Total number of users purchasing the course)
SELECT studentId , COUNT(studentId) AS No_of_courses_enrolled 
 FROM enrollment_table GROUP BY studentId ORDER BY No_of_courses_enrolled DESC ; -- (Number of courses purchsec by each user)
 
-- 2. retrive the course name not entrolled by student

CREATE VIEW courses_enrolled AS
SELECT DISTINCT courseId FROM enrollment_table ; -- (creating a view for courses enrolled )

SELECT ct.courseId , ct.courseName ,ct.branches FROM course_table ct
LEFT JOIN courses_enrolled c ON c.courseId = ct.courseId WHERE c.courseId IS NULL; -- (courses not enrolled by students )

-- 3. courseId,course_name,course_branch,instructorId,first name

SELECT c.courseId , c.courseName , c.branches , i.instructorId , i.first_name FROM course_table c 
INNER JOIN 
instructor_table i ON c.branches = i.branches ;

-- 4. student_details with courseId

SELECT s.studentId , s.first_name  , s.last_name , s.email,  s.year_of_joining , e.courseId  FROM student_table s
LEFT JOIN 
enrollment_table e ON s.studentId = e.studentId  ;

-- 5. display the student based on no max course they purchased

SELECT s.studentId , concat(s.first_name," ",s.last_name) AS studentName , count(e.studentId) AS No_of_courses_enrolled FROM enrollment_table e
INNER JOIN  student_table s ON e.studentId = s.studentId GROUP BY e.studentId ORDER BY count(e.studentId) DESC;

-- 6. rank for that student based on course fees

SELECT studentId, Total_fee, RANK() OVER (ORDER BY Total_fee DESC) AS Rank_of_student FROM 
( SELECT e.studentId, SUM(c.course_fees) AS Total_fee FROM course_table c 
 INNER JOIN 
 enrollment_table e
 ON e.courseId = c.courseId 
 GROUP BY e.studentId
) AS subquery; -- (rank based on cummulative fee of all the courses enrolled by students)


TRUNCATE TABLE student_table ; -- delete the table data without logs
revoke all privileges , grant option  from 'root'@'localhost';

START TRANSACTION;
insert into student_table Values (20209684,'Taher','Sukhlaj','Sukhlaj@gmail.com',2020) ; 
ROLLBACK; -- ( when the insertion is wrong)
COMMIT;


