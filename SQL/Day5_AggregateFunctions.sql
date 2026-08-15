-- ============================================================
-- DAY 5: AGGREGATE FUNCTIONS
-- ============================================================
--
-- TOPICS COVERED:
-- 1. MAX()
-- 2. MIN()
-- 3. AVG()
-- 4. SUM()
-- 5. COUNT()
-- 6. Aggregate Functions with WHERE
-- 7. Multiple Aggregate Functions
-- 8. Subquery with Aggregate Functions
-- 9. IN / NOT IN
-- 10. SUBSTR()
-- 11. Date Aggregate Functions
-- 12. NULL Handling
-- 13. Common Aggregate Function Errors
--
-- ============================================================


-- Q1. Find the maximum salary of all employees.

SELECT MAX(SAL)
FROM EMP;


-- Q2. Find the minimum salary of all employees.

SELECT MIN(SAL)
FROM EMP;


-- Q3. Find the average salary of all employees.

SELECT AVG(SAL)
FROM EMP;


-- Q4. Find the total salary paid to all employees.

SELECT SUM(SAL)
FROM EMP;


-- Q5. Find the total number of employees.

SELECT COUNT(*)
FROM EMP;


-- Q6. Find the maximum salary of employees working in department 20.

SELECT MAX(SAL)
FROM EMP
WHERE DEPTNO = 20;


-- Q7. Find the total salary of all SALESMAN employees.

SELECT SUM(SAL)
FROM EMP
WHERE JOB = 'SALESMAN';

-- Oracle string comparison is case-sensitive.
-- Correct value: 'SALESMAN'


-- Q8. Find the average salary of employees hired in 1981.

SELECT AVG(SAL)
FROM EMP
WHERE HIREDATE LIKE '%81';


-- Q9. Count employees whose job is either SALESMAN or CLERK.

SELECT COUNT(*)
FROM EMP
WHERE JOB IN ('SALESMAN', 'CLERK');


-- Q10. Count employees whose names start with a vowel.

SELECT COUNT(*)
FROM EMP
WHERE SUBSTR(ENAME, 1, 1) IN ('A','E','I','O','U');


-- Q11. Count employees whose names do not start with a vowel.

SELECT COUNT(*)
FROM EMP
WHERE SUBSTR(ENAME, 1, 1) NOT IN ('A','E','I','O','U');

-- Q12. Find the number of employees who are not earning any commission, including employees with zero commission.
SELECT COUNT(*)
FROM EMP
WHERE  COMM is NULL OR COMM = 0;


-- Q13. Count employees who receive commission(Find number of employees earning some commission, excluding zero).

SELECT COUNT(*)
FROM EMP
WHERE COMM != 0;


-- Q. Count employees whose commission is exactly zero.

SELECT COUNT(*)
FROM EMP
WHERE COMM = 0;


-- Q14. Find the minimum, maximum, average and total salary
--      of employees.

SELECT MIN(SAL), MAX(SAL), AVG(SAL), SUM(SAL)
FROM EMP;


-- Q15. Find the employee who receives the highest salary.

SELECT ENAME
FROM EMP
WHERE SAL = (SELECT MAX(SAL) FROM EMP);

-- Q16. Find the minimum salary where the salary is greater than 600.

SELECT MIN(SAL)
FROM EMP
WHERE SAL > 600;

-- Q.Find the second-lowest salary among employees whose salary is greater than 600.
SELECT MIN(SAL)
FROM EMP
WHERE SAL > (SELECT MIN(SAL) FROM EMP WHERE SAL > 600);


-- Q. Display employee name along with maximum salary.

-- WRONG QUERY:
-- SELECT ENAME, MAX(SAL)
-- FROM EMP;

-- ERROR:
-- ORA-00937: not a single-group group function

-- CORRECT QUERY:

SELECT ENAME, SAL
FROM EMP
WHERE SAL = (SELECT MAX(SAL) FROM EMP);

-- MISTAKE:
-- ENAME is a normal column and MAX(SAL) is an aggregate function.
-- Both cannot be selected together without GROUP BY.


-- Q. Find the minimum salary greater than 600.

-- WRONG QUERY:
-- SELECT MIN(SAL)
-- FROM EMP
-- WHERE MIN(SAL) > 600;

-- ERROR:
-- ORA-00934: group function is not allowed here

-- CORRECT QUERY:

SELECT MIN(SAL)
FROM EMP
WHERE SAL > 600;

-- MISTAKE:
-- Aggregate functions cannot be used directly inside WHERE.


-- Q. Find the second-lowest salary.

SELECT MIN(SAL)
FROM EMP
WHERE SAL > (SELECT MIN(SAL) FROM EMP);


-- Q. Find the minimum salary greater than 600.

SELECT MIN(SAL)
FROM EMP
WHERE SAL > 600;


-- Q17. Find the minimum and maximum salary of MANAGER employees.

SELECT MIN(SAL), MAX(SAL)
FROM EMP
WHERE JOB = 'MANAGER';

-- MISTAKE:
-- WHERE JOB = 'manager'
-- Oracle string comparison is case-sensitive.
-- Correct value: 'MANAGER'


-- Q18. Find the earliest hired employee date.

SELECT MIN(HIREDATE)
FROM EMP;


-- Q19. Find the latest hired employee date.

SELECT MAX(HIREDATE)
FROM EMP;


-- Q20. Find the total salary of employees working in department 20 or 30.

SELECT SUM(SAL)
FROM EMP
WHERE DEPTNO IN (20, 30);


-- Q21. Display employees whose names start with a vowel.

SELECT ENAME
FROM EMP
WHERE SUBSTR(ENAME, 1, 1) IN ('A','E','I','O','U');


-- Q22. Display employees whose names do not start with a vowel.

SELECT ENAME
FROM EMP
WHERE SUBSTR(ENAME, 1, 1) NOT IN ('A','E','I','O','U');


-- ============================================================
-- MISTAKES LEARNED TODAY
-- ============================================================
--
-- 1. Oracle string comparison is case-sensitive.
--    Example:
--    'SALESMAN' is different from 'Salesman'
--
-- 2. Aggregate functions cannot be directly used in WHERE.
--    Wrong:
--    WHERE MIN(SAL) > 600
--
-- 3. Normal columns and aggregate functions cannot be selected
--    together without GROUP BY.
--    Wrong:
--    SELECT ENAME, MAX(SAL) FROM EMP;
--
-- 4. SAL > SAL is always FALSE.
--
-- 5. NULL commission values are not equal to 0.
--    Therefore COMM != 0 only counts employees having
--    a non-zero commission.
--
-- 6. SUBSTR(ENAME, 1, 1) is used to get the first character
--    of an employee name.
--
-- 7. IN is used to check multiple possible values.
--
-- 8. NOT IN is used to exclude multiple values.
--
-- 9. Subqueries can be used with aggregate functions.
--
-- ============================================================
-- END OF DAY 5
-- ============================================================