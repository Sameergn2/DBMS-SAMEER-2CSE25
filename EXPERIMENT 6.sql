--1.Display empno, ename, deptno from employee table. Instead of display department numbers display the related department name (Use decode function)
Display empno, ename, dept name instead of deptno

SELECT
    e.empno,
    e.ename,
    CASE e.deptno
        WHEN 10 THEN 'RESEARCH'
        WHEN 20 THEN 'ACCOUNTING'
        WHEN 30 THEN 'SALES'
        WHEN 40 THEN 'OPERATIONS'
    END AS department
FROM employee e;

--2.Display your age in days.
Display your age in days

SELECT DATEDIFF(CURDATE(), '2000-01-01') AS age_in_days;

--3.Display your age in months.
Display your age in months

SELECT TIMESTAMPDIFF(MONTH, '2000-01-01', CURDATE()) AS age_in_months;

--4.Display the current date as 15th August Friday Nineteen Ninety-Seven.
Display current date as 15th August Friday Nineteen Ninety-Seven

SELECT DATE_FORMAT('1997-08-15', '%D %M %W %Y') AS formatted_date;

--5.Display the following output for each row from employee table.
Display formatted output for each employee as Scott joined company on Wednesday 13th August Nineteen Ninety

SELECT CONCAT(
        ename,' has joined the company on ',
        DATE_FORMAT(hiredate,'%W %D %M %Y')
    ) AS joining_info FROM employee
WHERE ename = 'SCOTT';

--6.Scott has joined the company on Wednesday 13th August Nineteen Ninety
Find nearest Saturday after current date

SELECT DATE_ADD(CURDATE(), INTERVAL (7 - DAYOFWEEK(CURDATE())) DAY) AS next_saturday;

--7.Find the date for nearest Saturday after current date.
Display current time

SELECT CURTIME();

--8.Display current time.
Display the date three months before current date

SELECT DATE_SUB(CURDATE(), INTERVAL 3 MONTH);
--9.Display the date three months Before the current date
Employees who joined in the month of December

SELECT ename, hiredate FROM employee
WHERE MONTH(hiredate) = 12;

--10.Display those employees who joined in the company in the month of Dec.
Employees whose first 2 characters of hiredate = last 2 characters of salary

SELECT ename FROM employee
WHERE LEFT(YEAR(hiredate),2) = RIGHT(sal,2);

--11.Display those employees whose first 2 characters from hire date -last 2 characters of salary.
Employees whose 10% salary = year of joining

SELECT ename FROM employee
WHERE sal * 0.10 = YEAR(hiredate);

--12.Display those employees whose 10% of salary is equal to the year of joining.
Employees who joined before 15th of the month

SELECT ename, hiredate FROM employee
WHERE DAY(hiredate) < 15;

--13.Display those employees who joined the company before 15 of the months
Employees whose joining date is available in deptno

SELECT ename FROM employee
WHERE DAY(hiredate) = deptno;
