CREATE TABLE EMP1(emp_id NUMBER PRIMARY KEY,
emp_name VARCHAR(20),emp_salary DECIMAL(10,2)
);     /*creating table*/

DESC EMP1;  /* used to display table and its  parameters*/

INSERT INTO EMP1 VALUES(1,'AHMAD',40000);  /* entering values in the tables*/
INSERT INTO EMP1 VALUES(2,'MARK',35000);
INSERT INTO EMP1 VALUES(3,'ABID',50000);
INSERT INTO EMP1 VALUES(4,'RAHUL',45000);

select * from emp1; /* displays total tables*/
select * from emp1 where emp_id=4;  /*display particular record*/
select emp_name from emp1 where emp_name='ABID';
select * from emp1 where emp_salary>35000;/* displays total record greater than particular values*/

/*Update Statement*/

select * from emp1;
update emp1 set emp_salary='60000' where emp_id=4; 
/*updating only one record value here 45000 is update to 60000*/

update emp1 set emp_salary='70000' where emp_id>=3; 
/*updating multiple rows/records here emp_id 3,4 values are updated from 50,000
&60000 to 70,000*/

/*DELETE STATEMENT*/
select * from emp1;
delete from emp1 where emp_id=4; /*deletes partiular records */
delete from emp1; /*deletes total table data*/


/*ORDERBY is used to sort the data returned by the query in ascending or descending order
syntax: SEELECT column_list FROM table_name ORDER BY coolumn_name ASC|DESC*/

select * from emp1 order by emp_id DESC; /*sorts entire data and displays it in descending order as per the emp id*/
select * from emp1 order by emp_id ASC;
select emp_name from emp1 order by emp_id DESC;/*sorts  emp_name data and displays emp_name data in descending order as per the employee id */


/* DISTINCT Clause is used to remove duplicate rows from the result set
Syntax: SELECT DISTINCT column_list from table_ name;
*/
INSERT INTO EMP1 VALUES(5,'MARK',35000);
SELECT * FROM EMP1;

select distinct emp_name from emp1;
select distinct emp_name,emp_salary from emp1;

/* TRUNCATE TABLE STATEMENT

*/
SELECT * FROM EMP1;
Truncate table emp1;
 