--Executed the below queries using Live SQL.

--Creating table for Instructors as given in HW2 description.
CREATE TABLE INSTRUCTORS(I_name varchar(20), Course varchar(50), PRIMARY KEY(I_name, Course));

--Creating an additional table for specific courses that we are looking for.
CREATE TABLE COURSE(CourseName varchar(50));
 
--Inserting values into Course Table.
INSERT INTO COURSE VALUES('Electronic Music Fundamentals');
INSERT INTO COURSE VALUES('MIDI controllers');
INSERT INTO COURSE VALUES('EDM synthesis');

--Inserting values into Instructors Table.
INSERT INTO INSTRUCTORS VALUES('Dat','Electronic Music Fundamentals');
INSERT INTO INSTRUCTORS VALUES('Dat','MIDI controllers');
INSERT INTO INSTRUCTORS VALUES('Dat','EDM synthesis');
INSERT INTO INSTRUCTORS VALUES('Aleph','MIDI controllers');
INSERT INTO INSTRUCTORS VALUES('Bit','EDM synthesis');
INSERT INTO INSTRUCTORS VALUES('CRC','Electronic Music Fundamentals');
INSERT INTO INSTRUCTORS VALUES('CRC','EDM synthesis');
INSERT INTO INSTRUCTORS VALUES('Emscr','EDM synthesis');
INSERT INTO INSTRUCTORS VALUES('Emscr','Electronic Music Fundamentals');
INSERT INTO INSTRUCTORS VALUES('Emscr','MIDI controllers');
INSERT INTO INSTRUCTORS VALUES('Emscr','abc');
INSERT INTO INSTRUCTORS VALUES('Tad','EDM synthesis');
INSERT INTO INSTRUCTORS VALUES('Tad','Electronic Music Fundamentals');
INSERT INTO INSTRUCTORS VALUES('Tad','abc');
INSERT INTO INSTRUCTORS VALUES('Tad','MIDI controllers');
INSERT INTO INSTRUCTORS VALUES('Kid','EDM synthesis');
INSERT INTO INSTRUCTORS VALUES('Kid','Electronic Music Fundamentals');
INSERT INTO INSTRUCTORS VALUES('Kid','abc');
INSERT INTO INSTRUCTORS VALUES('Kid','MIDI controllers');

--Main Query.
SELECT I_name 
FROM Instructors 
WHERE COURSE IN (SELECT CourseName FROM COURSE)
AND COURSE <> ALL (SELECT COURSE FROM INSTRUCTORS where COURSE NOT IN (SELECT CourseName FROM COURSE))
GROUP BY I_name HAVING COUNT(I_name)>=3;

--Solution Explanation: I am basically performing the DIVISION of the two tables, Course table being the divisor and the Instructors table being the dividend. An Instructor may have any number of subjects
--but whenever he has all the subjects to deal with which are part of the Course table, that is when we retrieve that instructor. My query first gets the instructors who deal with at least one course in 
--the course table and then checks against the count (which is 3 as per the HW2 description). We also check the count does not relate to the other subjects which are not part of the course table.
