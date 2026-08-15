-- ============================================================
-- DAY: SQL AGGREGATE FUNCTIONS & GROUP BY
-- ============================================================
-- Topics Covered:
-- 1. Aggregate Functions: MAX(), MIN(), SUM(), AVG(), COUNT()
-- 2. GROUP BY
-- 3. HAVING
-- 4. WHERE with GROUP BY
-- 5. IS NULL
-- 6. NOT IN
-- 7. SUBSTR()
-- 8. EXTRACT()
-- ============================================================


-- Q1. Find the maximum salary in each department.

-- My Query:
SELECT MAX(SAL) FROM EMP GROUP BY DEPTNO;


-- Q. Find the maximum salary of each department along with department number.

-- My Query:
SELECT MAX(SAL), DEPTNO FROM EMP GROUP BY DEPTNO;


-- Q2. Find the number of employees in each job.

-- My Query:
SELECT COUNT(*), JOB FROM EMP GROUP BY JOB;


-- Q3. Find the total salary of employees in each department.

-- My Query:
SELECT SUM(SAL), DEPTNO FROM EMP GROUP BY DEPTNO;


-- Q4. Find the number of employees whose names do not start
-- with a vowel in each department.

-- My Query:
SELECT COUNT(*), DEPTNO
FROM EMP
WHERE SUBSTR(ENAME,1,1) NOT IN('A','E','I','O','U')
GROUP BY DEPTNO;

-- Q5. Find the maximum, minimum and average salary for each job,
-- excluding PRESIDENT.

-- My Query:
SELECT MAX(SAL), MIN(SAL), AVG(SAL), JOB
FROM EMP
WHERE JOB!='PRESIDENT'
GROUP BY JOB;


-- Q6. Find the number of employees hired in each month.

-- My Query:
SELECT COUNT(*), EXTRACT(MONTH FROM HIREDATE)
FROM EMP
GROUP BY EXTRACT(MONTH FROM HIREDATE);


-- Q7. Find the number of employees hired in each year.

-- My Query:

SELECT COUNT(*), EXTRACT(YEAR FROM HIREDATE)
FROM EMP
GROUP BY EXTRACT(YEAR FROM HIREDATE);


-- Q8. Find the total salary of employees hired in each year,
-- excluding employees hired in December.

-- My Query:

SELECT SUM(SAL), EXTRACT(YEAR FROM HIREDATE)
FROM EMP
WHERE HIREDATE NOT LIKE '%DEC%'
GROUP BY EXTRACT(YEAR FROM HIREDATE);


-- Q9. Find the total, maximum, minimum and average salary
-- for each job.

-- My Query:
SELECT SUM(SAL), MAX(SAL), MIN(SAL), AVG(SAL), JOB
FROM EMP
GROUP BY JOB;

-- Q10. Find the number of employees who do not receive
-- any commission in each department.

-- My Query:
SELECT COUNT(*), DEPTNO
FROM EMP
WHERE COMM IS NULL
GROUP BY DEPTNO;


-- Q11. Find the maximum salary of each department where
-- the maximum salary is greater than 2000.

-- My Query:
SELECT MAX(SAL), DEPTNO
FROM EMP
GROUP BY DEPTNO
HAVING MAX(SAL)>2000;



-- ============================================================
-- MISTAKES TO REMEMBER
-- ============================================================
-- 1. TOTAL() is not an Oracle aggregate function.
--    Use SUM().
----
-- 3. NOT LIKE must always have a column/expression before it.
--    Example: HIREDATE NOT LIKE '%DEC%'
--
-- 4. WHERE filters rows before GROUP BY.
--    HAVING filters groups after GROUP BY.
-- ============================================================