-- SQL PRACTICE - 10 AUG 2026
-- Oracle EMP Table


-- =========================================
-- 1. NOT IN / AND / OR
-- =========================================

-- Q1. Display all employees except JAMES and JONES.

SELECT *
FROM EMP
WHERE ENAME NOT IN ('JAMES','JONES');


-- Q2. Display employees whose name is not JAMES
-- and not JONES using !=.

SELECT *
FROM EMP
WHERE ENAME != 'JAMES'
AND ENAME != 'JONES';


-- =========================================
-- 2. LIKE / NOT LIKE
-- =========================================

-- Q3. Display employees whose name starts with M.

SELECT *
FROM EMP
WHERE ENAME LIKE 'M%';


-- Q4. Display employees whose second character is A.

SELECT *
FROM EMP
WHERE ENAME LIKE '_A%';


-- Q5. Display employees whose name does not start with M.

SELECT *
FROM EMP
WHERE ENAME NOT LIKE 'M%';


-- =========================================
-- 3. NULL
-- =========================================

-- Q6. Display employees whose commission is NULL.

SELECT *
FROM EMP
WHERE COMM IS NULL;


-- Q7. Display employees whose commission is NOT NULL.

SELECT *
FROM EMP
WHERE COMM IS NOT NULL;


-- =========================================
-- 4. STRING FUNCTIONS
-- =========================================

-- Q8. Display employee names in lowercase.

SELECT LOWER(ENAME)
FROM EMP;


-- Q9. Display employee names in uppercase.

SELECT UPPER(ENAME)
FROM EMP;


-- Q10. Display employee names using INITCAP.

SELECT INITCAP(ENAME)
FROM EMP;


-- Q11. Display first two characters of employee names.

SELECT SUBSTR(ENAME,1,2)
FROM EMP;


-- =========================================
-- 5. AGGREGATE FUNCTIONS
-- =========================================

-- Q12. Find maximum salary.

SELECT MAX(SAL)
FROM EMP;


-- Q13. Find total salary of departments 20 and 30.

SELECT SUM(SAL)
FROM EMP
WHERE DEPTNO IN (20,30);


-- =========================================
-- 6. GROUP BY
-- =========================================

-- Q14. Find maximum salary in each department.

SELECT MAX(SAL), DEPTNO
FROM EMP
GROUP BY DEPTNO;


-- Q15. Count employees with NULL commission
-- in each department.

SELECT COUNT(*), DEPTNO
FROM EMP
WHERE COMM IS NULL
GROUP BY DEPTNO;


-- =========================================
-- 7. HAVING
-- =========================================

-- Q16. Display departments whose maximum salary
-- is greater than 2000.

SELECT MAX(SAL), DEPTNO
FROM EMP
GROUP BY DEPTNO
HAVING MAX(SAL) > 2000;


-- Q17. Display salary statistics for departments
-- whose minimum salary is greater than 900.

SELECT MIN(SAL), MAX(SAL), AVG(SAL), SUM(SAL), DEPTNO
FROM EMP
GROUP BY DEPTNO
HAVING MIN(SAL) > 900;