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
  
   -- write a query maximum scored by student marks1 depict this column as highest marks_1.
  
  SELECT MAX(m1) AS highest_m1
  FROM student_dtl; 
  
  -- write a query total number of students studying in bldea 
  
  SELECT COUNT(sid) AS count_stu
  FROM student_dtl
  WHERE college='bldea'
  
  -- waq minimum  of marks2 as min_marks2 from student table.
  
  SELECT MIN(m2) AS min_m2
  FROM student_dtl; 
  
 -- waq the average marks3 as avg_marks3 from student table
 SELECT AVG(m3) AS avg_marks3
 FROM student_dtl;
 
 
 
 -- write a query total marks1 scored by student who are  not studying in bldea
  
  SELECT SUM(m1) AS total_marks
  FROM student_dtl
  WHERE college <> 'bldea';
 
 
 
 -- waq to print the details of all students who have scored distiniction (more than 70 in all subjects)
 
 SELECT *  FROM student_dtl
 WHERE m1>70 AND m2>70 AND m3>70; 
 
 
 
 /* waq to insert new record as shown below 
   name is aishwariya
   sid is 5
   school is rvce
   marks1 97
   marks2 64
   marks3 57
   father name mahaveer
   mother name pushpa
   phone  8889966644
   age 21
   class 7th sem
   */
   INSERT INTO student_dtl(sname,sid,school,m1,m2,m3,fname,mname,phone,age,class)
   VALUES('aishwarya',5,'rvce',97,64,57,'mahaveer','pushpa', 8889966644,21,'7th sem');
   
   -- write a query to change the name of column school to college 
   
   ALTER TABLE student_dtl
   CHANGE COLUMN school college VARCHAR(60); 
   
   DESC student_dtl;
   
   
  --  waq to modify the name of columns by preciding every column with stud_sid
  
  ALTER TABLE student_dtl
  CHANGE COLUMN sid stud_sid INT;
  
  
   DESC student_dtl;
 
 
