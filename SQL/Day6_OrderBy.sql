-- ============================================================
-- DAY 6: ORDER BY
-- ============================================================
 -- TOPICS COVERED
-- ============================================================
-- ORDER BY
-- ASC (Ascending Order)
-- DESC (Descending Order)
-- WHERE + ORDER BY
-- Multiple conditions with AND
-- GROUP BY + ORDER BY
-- HAVING + ORDER BY
-- ORDER BY with aggregate functions
-- COUNT() with ORDER BY
-- MAX() with ORDER BY


-- Q1. Write a query to display all employee details except SALESMAN
--     employees and order the employee names in ascending order.
SELECT *
FROM emp
WHERE job != 'SALESMAN'
ORDER BY ename ASC;


-- Q2. Write a query to display employee details where the salary
--     is greater than 1000 and less than 3000, and order the jobs
--     in descending order.

SELECT *
FROM emp
WHERE sal > 1000
  AND sal < 3000
ORDER BY job DESC;


-- Q3. Write a query to find the number of employees working in each
--     department number and order the department numbers in descending order.

SELECT COUNT(*), deptno
FROM emp
GROUP BY deptno
ORDER BY deptno DESC;


-- Q4. Write a query to display the maximum salary present in each job
--     and order the maximum salary in ascending order.
SELECT MAX(sal), job
FROM emp
GROUP BY job
ORDER BY MAX(sal) ASC;


-- Q5. Write a query to find the number of employees working in each
--     department number where at least 2 employees are working,
--     and order the employee count in ascending order.
SELECT COUNT(*), deptno
FROM emp
GROUP BY deptno
HAVING COUNT(*) >= 2
ORDER BY COUNT(*) ASC;



-- ============================================================
-- LEARNING 
-- ============================================================

-- Important:
-- ORDER BY sorts the final result.
-- ASC  -> Ascending order (A-Z / low-high)
-- DESC -> Descending order (Z-A / high-low)
--
-- ORDER OF CLAUSES:
-- SELECT
-- FROM
-- WHERE
-- GROUP BY
-- HAVING
-- ORDER BY
-- ============================================================
-- LEARNING:
-- Aggregate functions such as MAX(), MIN(), SUM(), AVG(), COUNT()
-- can be used with ORDER BY for sorting aggregated results.
--
-- Aggregate functions cannot be directly used in WHERE.
-- WHERE filters rows BEFORE GROUP BY.
-- HAVING filters groups AFTER GROUP BY.
-- ORDER BY sorts the final result.
--
-- Example:
-- ORDER BY MAX(sal) ASC  -> VALID
-- WHERE MAX(sal) > 2000  -> INVALID
-- HAVING MAX(sal) > 2000 -> VALID