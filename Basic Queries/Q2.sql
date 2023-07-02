--Executed the below queries using Live SQL.

--Creating table Enrollment as given in the HW2 description.
CREATE TABLE ENROLLMENT(S_id INTEGER, ClassName VARCHAR(50), Grade VARCHAR(1) NOT NULL, PRIMARY KEY(S_id, ClassName));

--Inserting values into the Enrollment table.
INSERT INTO ENROLLMENT VALUES(123,'Synthesis algorithms','A');
INSERT INTO ENROLLMENT VALUES(123,'EDM synthesis','B');
INSERT INTO ENROLLMENT VALUES(123,'MIDI controllers','B');
INSERT INTO ENROLLMENT VALUES(662,'SOUND MIXING','B');
INSERT INTO ENROLLMENT VALUES(662,'EDM synthesis','A');
INSERT INTO ENROLLMENT VALUES(662,'Electronic Music Fundamentals','A');
INSERT INTO ENROLLMENT VALUES(662,'MIDI controllers','B');
INSERT INTO ENROLLMENT VALUES(345,'MIDI controllers','A');
INSERT INTO ENROLLMENT VALUES(345,'Electronic Music Fundamentals','B');
INSERT INTO ENROLLMENT VALUES(345,'EDM synthesis','A');
INSERT INTO ENROLLMENT VALUES(555,'EDM synthesis','B');
INSERT INTO ENROLLMENT VALUES(555,'Electronic Music Fundamentals','B');
INSERT INTO ENROLLMENT VALUES(213,'Electronic Music Fundamentals','A');

--Main Query.
SELECT ClassName, COUNT(S_id) AS Total 
FROM Enrollment 
GROUP BY ClassName 
ORDER BY Total DESC;