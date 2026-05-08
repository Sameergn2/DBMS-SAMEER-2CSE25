-- 1. CREATE EMPLOYEE_MASTER TABLE WITH DATA USING EMPLOYEE
Create Employee_master table with data using Employee table
CREATE TABLE employee_master AS
SELECT * FROM employee;
--2 Delete all record into Employee_master whose DeptNo is 10
Delete all records from Employee_master whose DeptNo is 10
DELETE FROM employee_master
WHERE deptno = 10;
--3. Update 10% in his salary of DEPTNO 20 into Employee_Master.
Update salary by 10% for DeptNo 20
UPDATE employee_master
SET sal = sal + (sal * 0.10)
WHERE deptno = 20;
--4. Alter SAL with size 10,2 in Employee_Master.
Alter SAL with size 10,2 in Employee_master
ALTER TABLE employee_master
MODIFY sal DECIMAL(10,2);
--5.Drop Employee_master Table
Drop Employee_master table
DROP TABLE employee_master;
-- CHECK OUTPUT
SELECT * FROM employee;
SELECT * FROM department;
SELECT * FROM employee_master;
