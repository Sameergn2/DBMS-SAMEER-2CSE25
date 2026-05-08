--1. Display the list of employees who have joined the company before 30th June 80 or after 31st Dec 81.
Employees who joined before 30-Jun-1980 OR after 31-Dec-1981
SELECT * FROM employee
WHERE hiredate < '1980-06-30' OR hiredate > '1981-12-31';
--2.Display the names of employees whose names have second alphabet A in their names. 
Names of employees whose second alphabet is A
_ → first character, A → second character
SELECT ename
FROM employee
WHERE ename LIKE '_A%';

--3.Display the names of employees whose name is exactly five characters in length 
Names of employees whose name is exactly 5 characters
  
SELECT ename
FROM employee
WHERE LENGTH(ename) = 5;

--4. Display the names of employees whose names have second alphabet A in their names.
Names of employees whose second alphabet is A

(same as Q2 – repeated in syllabus)

SELECT ename FROM employee
WHERE ename LIKE '_A%';

--5.Display the names of employees who are not working as salesman or clerk or analyst. 
Employees NOT working as salesman, clerk or analyst

SELECT ename
FROM employee
WHERE job NOT IN ('SALESMAN','CLERK','ANALYST');

--6.Display the name of the employee along with their annual salary (sal*12). The name of the employee earning highest salary should appear first. 
Employee name & annual salary,

highest salary first

SELECT ename, sal*12 AS annual_salary FROM employee
ORDER BY sal DESC;

--7.Display the name of the employee along with their annual salary (sal*12). The name of the employee earning highest salary should appear first. Name, sal, hra, pf, da, totalsal
--HRA = 15% of sal DA = 10% of sal PF = 5% of sal TotalSal = (sal + hra + da) − pf

SELECT
    ename,
    sal,
    sal*0.15 AS hra,
    sal*0.10 AS da,
    sal*0.05 AS pf,
    (sal + (sal*0.15) + (sal*0.10) - (sal*0.05)) AS totalsal
FROM employee
ORDER BY totalsal DESC;

--8.Update the salary of each employee by 10% increment who are not eligible for commission. 
Update salary by 10% increment

for employees NOT eligible for commission

UPDATE employee SET sal = sal + (sal * 0.10)
WHERE comm IS NULL OR comm = 0;

--9. Display those employees whose salary is more than 3000 after giving 20% increment
Employees whose salary is > 3000 after 20% increment

SELECT ename FROM employee WHERE sal + (sal * 0.20) > 3000;
--10. Display those employees whose salary contains atleast 3 digits.
Employees whose salary contains at least 3 digits

SELECT ename, sal FROM employee WHERE LENGTH(sal) >= 3;
