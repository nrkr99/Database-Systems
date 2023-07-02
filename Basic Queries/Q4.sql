--Executed the below queries using Live SQL.

--Creating table for Instructor as given in the HW2 description.
CREATE TABLE INSTRUCTOR(I_id Integer, I_name VARCHAR(20), Course VARCHAR(50), Rate INTEGER, Strength INTEGER, PRIMARY KEY(I_id, I_name,Course));

--Inserting values into the Instructor table.
INSERT INTO INSTRUCTOR VALUES(001,'Dat','MIDI controllers',25,20);
INSERT INTO INSTRUCTOR VALUES(001,'Dat','Electronic Music Fundamentals',25,20);
INSERT INTO INSTRUCTOR VALUES(001,'Dat','EDM synthesis',25,15); 
INSERT INTO INSTRUCTOR VALUES(002,'Tad','MIDI controllers',23,15);
INSERT INTO INSTRUCTOR VALUES(002,'Tad','Electronic Music Fundamentals',23,20);
INSERT INTO INSTRUCTOR VALUES(002,'Tad','EDM synthesis',23,15); 
INSERT INTO INSTRUCTOR VALUES(003,'Thor','MIDI controllers',30,30);
INSERT INTO INSTRUCTOR VALUES(003,'Thor','Electronic Music Fundamentals',30,20);
INSERT INTO INSTRUCTOR VALUES(003,'Thor','EDM synthesis',30,15); 
INSERT INTO INSTRUCTOR VALUES(004,'Shawn','MIDI controllers',23,15);
INSERT INTO INSTRUCTOR VALUES(004,'Shawn','Electronic Music Fundamentals',23,20);
INSERT INTO INSTRUCTOR VALUES(004,'Shawn','EDM synthesis',23,15); 

--Main Query.
SELECT MAX(Rate*sum_of_class_counts*0.1) AS Bonus 
FROM Instructor, (SELECT SUM(Strength) AS sum_of_class_counts FROM INSTRUCTOR GROUP BY I_id)