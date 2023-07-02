--Executed the below queries using Live SQL.

--Creating table for Instructors as given in HW2 description.
CREATE TABLE INSTRUCTORS(I_name varchar(20), Course varchar(50), PRIMARY KEY(I_name, Course));

--Inserting values into Course Table.
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
SELECT I_name FROM Instructors WHERE Course IN ('Electronic Music Fundamentals','MIDI controllers','EDM synthesis')  
AND Course <> ALL (SELECT Course FROM Instructors WHERE Course NOT IN ('Electronic Music Fundamentals','MIDI controllers','EDM synthesis')) 
GROUP BY I_name HAVING COUNT(I_name)>=3;

--Solution Explanation: Similar division operation on the tables but the difference being the hardcoded nature of the
--query without using another table for the specific courses.