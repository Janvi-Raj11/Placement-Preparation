-- ============================================================
-- DAY 6: GROUP BY, HAVING & AGGREGATE FUNCTIONS
-- ============================================================

-- Q1. Find the number of employees working in each department
--     that has at least 2 employees.
SELECT COUNT(*), deptno
FROM emp
GROUP BY deptno
HAVING COUNT(*) >= 2;

-- Q2. Find the maximum salary in each department
--     where the maximum salary is greater than 2000.
SELECT MAX(sal), deptno
FROM emp
GROUP BY deptno
HAVING MAX(sal) > 2000;

-- Q3. Find employee names that occur more than once.(-- Q3. Find duplicate employee names.)
SELECT COUNT(*), ename
FROM emp
GROUP BY ename
HAVING COUNT(*) > 1;

-- Q4. Find employee names that occur exactly once.(-- Q4. Find unique employee names.)
SELECT COUNT(*), ename
FROM emp
GROUP BY ename
HAVING COUNT(*) = 1;

-- Q5. Find salaries that are repeated more than once.(-- Q5. Find duplicate salaries.)
SELECT COUNT(*), sal
FROM emp
GROUP BY sal
HAVING COUNT(*) > 1;

-- Q6. Find salaries that occur exactly once.(-- Q6. Find unique salaries.)
SELECT COUNT(*), sal
FROM emp
GROUP BY sal
HAVING COUNT(*) = 1;

-- Q7. Find departments having exactly one employee.(-- Q7. Find unique department numbers (DEPTNO).)
SELECT COUNT(*), deptno
FROM emp
GROUP BY deptno
HAVING COUNT(*) = 1;
-- Q8. Find the number of employees working in each job where employee names start with a consonant character and at least 3 employees are working in that job.

SELECT COUNT(*), job
FROM emp
WHERE SUBSTR(ename, 1, 1) NOT IN ('A','E','I','O','U')
GROUP BY job
HAVING COUNT(*) >= 3;

-- Q9. -- Q9. Write a query to find the total salary present in each job  where the total salary is greater than 6600..

SELECT SUM(sal), job
FROM emp
GROUP BY job
HAVING SUM(sal) > 6600;

-- Q10. Write a query to find the maximum, minimum, average
--      and total salary present in each department number
--      where the minimum salary is greater than 900.

SELECT MAX(sal), MIN(sal), SUM(sal), AVG(sal), deptno
FROM emp
GROUP BY deptno
HAVING MIN(sal) > 900;

-- ============================================================
-- TOPICS COVERED:
-- GROUP BY
-- HAVING
-- COUNT()
-- SUM()
-- MAX()
-- MIN()
-- AVG()
-- WHERE with GROUP BY
-- SUBSTR()
-- NOT IN
-- Filtering groups using aggregate functions
-- ============================================================

-- LEARNING / MISTAKE:
-- I learned that GROUP BY creates groups and HAVING filters
-- those groups after aggregation.
----------------------------------

-- Important:
-- WHERE  -> filters individual rows BEFORE GROUP BY
-- HAVING -> filters groups AFTER GROUP BY
-- ============================================================
