--Executed the below queries using Live SQL.

--Creating the table as given in the HW2 description with an additional CHECK constraint that resolves the first issue. This CHECK
--constraint will if the END TIME is greater than START TIME of each insertion. If any tuple insertion into the table violates this 
--then it will throw an error "check constraint (SQL_IMZZIFFJFAPHPFALMUJXEYFEG.ENDTIME) violated ORA-06512: at "SYS.DBMS_SQL".
CREATE TABLE ProjectRoomBookings( 
roomNum INTEGER NOT NULL, 
startTime INTEGER NOT NULL, 
endTime INTEGER NOT NULL, 
groupName VARCHAR(10) NOT NULL, 
CONSTRAINT endTime CHECK(endTime>startTime), 
PRIMARY KEY (roomNum, startTime) 
)

--Second issue resolution.
-- The second issue can be resolved using the SQL Functions where in the code can be written such 
-- that for every insertion into the ProjectRoomBookings table, we have to check if the existing 
-- roomNum is same as the new roomNum. If yes, we check if the existing groupName is same as the new GroupName. 
-- If yes, we may not have to check anything else, but, if no, then we have to check if the existing 
-- endTime is less than the new startTime. If yes, then we have to restrict such an entry into the table as 
-- it overlaps with the existing group in a room.
