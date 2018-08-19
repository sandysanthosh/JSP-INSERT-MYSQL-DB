# JSP-INSERT-MYSQL-DB
Simple JSP Form CRUD


Create Database in mysql student

creat form insert data into student table



DB QUERY :

mysql> ALTER TABLE STUDENT ADD COLUMN pass SMALLINT(6) NOT NULL,ADD COLUMN cpass
 VARCHAR(12) NOT NULL, ADD COLUMN dob VARCHAR(10), ADD COLUMN age int, ADD COLUM
N gender VARCHAR(10),ADD COLUMN address VARCHAR(10),ADD COLUMN country VARCHAR(1
0);`


ALTER TABLE STUDENT  ADD COLUMN state VARCHAR(12) NOT NULL, ADD COLUMN city VARCHAR(10), ADD COLUMN telephone int,ADD COLUMN mobile int;


ALTER TABLE student DROP COLUMN id;
