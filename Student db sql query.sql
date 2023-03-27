-- creating database
CREATE DATABASE bldea_sql
-- creating student table
CREATE TABLE student_dtl(
 sid INT NOT NULL PRIMARY KEY,
 sname VARCHAR(40),
 age INT,
 class VARCHAR(40),
 school VARCHAR(60),
 fname VARCHAR(40),
 mname VARCHAR(40),
 phone BIGINT,
 m1 INT,
 m2 INT,
 m3 INT
 );
 DESC student_dtl
 -- inset data into table 
 INSERT INTO student_dtl VALUES(1,'harshitha',21,'6th sem','bldea','arun','vidya',9786543210,97,89,77);
 INSERT INTO student_dtl VALUES(2,'tarun',21,'7th sem','bldea','ramdev','shashikala',9432178650,87,99,67);
 INSERT INTO student_dtl VALUES(3,'priyanka',21,'6th sem','pes','ashoke','aruna',9543786210,74,79,97);
 INSERT INTO student_dtl VALUES(4,'veeresh',22,'8th sem','rvce','ravi','uma',9786504321,88,99,77);
 
 -- fetch all info from student-dtl table
 SELECT * FROM student_dtl
 -- waq to fetch details of all students who are studying in bldea
 SELECT * FROM student_dtl 
 WHERE school='bldea'
 
 -- waq to fetch details of all students who are not studying in bldea
 SELECT * FROM student_dtl 
 WHERE school!='bldea'
 
 -- waq to fetch details of all students who has scored above 80 in m1
 SELECT * FROM student_dtl
 WHERE m1>80;
 -- waq to fetch details of name of all the students who scored < 90 in all the marks
 
 SELECT sname FROM student_dtl
 WHERE m1<90 AND m2<90 AND m3<90;
 
 -- waq to find names, id,of the students who has scorred the marks betn 80 to 100 in marks2
 
 SELECT sname ,sid FROM student_dtl
 WHERE m2 BETWEEN 80 AND 100;
 
 -- waq to fetch the name id school of the students who studyng in pes or rvce
 
 SELECT sname,sid,school FROM student_dtl
 WHERE school='pes' OR school= 'rvce';
 
 -- waq to make the modification in the marks of the students with id no=3
-- by decresing the marks by 10 in marks3


UPDATE student_dtl
SET m3=m3-10
WHERE sid=3;

SELECT * FROM student_dtl WHERE sid=3;

-- waq to display the name and marks1 of the student according to highest scorerer to lowest scorer

  SELECT sname , m1 FROM student_dtl
  ORDER BY m1 DESC;
  
  -- waq to find all the informations of students who are bldea colledge or having the age = 21 with the marks being 90 and above in all
  SELECT * FROM student_dtl
  WHERE school='bldea'
  HAVING (age =21) OR m1>=90 AND m2>=90 AND m3>=90
 