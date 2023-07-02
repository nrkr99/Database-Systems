CREATE EXTENSION postgis;
CREATE EXTENSION postgis_topology;

CREATE TABLE COORDINATES (name varchar, geom geometry);

INSERT INTO COORDINATES VALUES
	('USC Village','POINT(-118.28423692749656 34.023978921449945)'),
   	('USC Turf Field','POINT(-118.28602675359537 34.02625558435369)'),
   	('Kauffman Entrance','POINT(-118.28535167511393 34.0241233958249)'),
   	('Leavey Library','POINT(-118.28289033491932 34.02125297341273)'),
   	('Doheny Library','POINT(-118.2840680837325 34.020302472165255)'),
   	('Wilson Library','POINT(-118.28602906211063 34.023623334909416)'),
	('Trojan Fountain','POINT(-118.28521773230125 34.02028318497735)'),
   	('RTCC Fountain','POINT(-118.28610512439003 34.02049160099971)'),
   	('May Ormerod Fountain','POINT(-118.28772386728129 34.0185575467055)'),
   	('Jack in the Box','POINT(-118.2780981667786 34.0251374216663)'),
   	('Popeyes','POINT(-118.2756397122829 34.02842924043197)'),
   	('CAVA','POINT(-118.2845796180128 34.025067240031554)'),
   	('home','POINT(-118.28010208915758 34.02834737210918)');

SELECT name, ST_AsText(geom) FROM COORDINATES;

SELECT ST_AsText(ST_ConvexHull(ST_Collect(geom))) FROM COORDINATES;

SELECT name,ST_Astext(geom) as location, ST_Distance(geom,'POINT(-118.28010208915758 34.02834737210918)') as distance
FROM COORDINATES
WHERE name!='home'
ORDER BY ST_Distance(geom,'POINT(-118.28010208915758 34.02834737210918)')
LIMIT 4;