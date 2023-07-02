--Executed the below queries using Live SQL.

--Creating the Project table as given the homework description.
CREATE TABLE PROJECT(P_id VARCHAR(5), Step INTEGER, Status VARCHAR(1) NOT NULL, PRIMARY KEY(P_id, Step));

--Inserting the VALUES INTO the Project table.
INSERT INTO PROJECT VALUES('P333',3,'W');
INSERT INTO PROJECT VALUES('P333',2,'W');
INSERT INTO PROJECT VALUES('P333',1,'W');
INSERT INTO PROJECT VALUES('P333',0,'W');
INSERT INTO PROJECT VALUES('P201',0,'C');
INSERT INTO PROJECT VALUES('P201',1,'C');
INSERT INTO PROJECT VALUES('P100',0,'C');
INSERT INTO PROJECT VALUES('P100',1,'W');
INSERT INTO PROJECT VALUES('P100',2,'W');
INSERT INTO PROJECT VALUES('P444',0,'C');
INSERT INTO PROJECT VALUES('P444',1,'W');

--Using the below query the P444 gets updated and the it won't be retrieved using the main query.
--UPDATE PROJECT SET Status = 'C' WHERE P_id = 'P444' AND Step = 1;

--Main Query
SELECT P_id 
FROM PROJECT 
WHERE Status = 'C' 
AND P_id IN (SELECT P_id FROM PROJECT WHERE Step = 0) 
GROUP BY P_id 
HAVING COUNT(P_id) = 1;
