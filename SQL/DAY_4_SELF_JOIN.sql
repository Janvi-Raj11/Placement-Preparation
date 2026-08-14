-- INNER JOIN → Matching
-- SELF JOIN → Same table
-- CROSS JOIN → Every combination

-- | JOIN           | When do we use it?                                         | Simple example     |
-- | -------------- | ---------------------------------------------------------- | ------------------ |
-- | **INNER JOIN** | When you want **matching data from 2 tables**              | Student + Course   |
-- | **SELF JOIN**  | When you want to **compare/relate rows in the same table** | Employee + Manager |
-- | **CROSS JOIN** | When you want **every possible combination** of rows       | Students × Courses |



-- DAY 3: SELF JOIN
-- Topic: SELF JOIN
-- Database: Oracle EMP and DEPT tables


-- Q1. Display employee name, employee salary, manager name and manager salary.

SELECT E.ENAME AS EMPLOYEE,
       E.SAL AS EMP_SAL,
       M.ENAME AS MANAGER,
       M.SAL AS MGR_SAL
FROM EMP E
JOIN EMP M
ON M.MGR = E.EMPNO;


-- Q2. Display employee name, employee job, manager name and manager job.

SELECT E.ENAME AS EMPLOYEE,
       E.JOB AS EMP_JOB,
       M.ENAME AS MANAGER,
       M.JOB AS MGR_JOB
FROM EMP E
JOIN EMP M
ON M.MGR = E.EMPNO;


-- Q3. Display employee name, employee department number,
-- manager name and manager department number.

SELECT E.ENAME AS EMPLOYEE,
       E.DEPTNO AS EMP_DEPTNO,
       M.ENAME AS MANAGER,
       M.DEPTNO AS MGR_DEPTNO
FROM EMP E
JOIN EMP M
ON M.MGR = E.EMPNO;


-- Q4. Display employee name, employee hire date,
-- manager name and manager hire date.

SELECT E.ENAME AS EMPLOYEE,
       E.HIREDATE AS EMP_HIREDATE,
       M.ENAME AS MANAGER,
       M.HIREDATE AS MGR_HIREDATE
FROM EMP E
JOIN EMP M
ON M.MGR = E.EMPNO;


-- Q5. Display employees whose salary is greater than their manager's salary.

SELECT E.ENAME AS EMPLOYEE,
       E.SAL AS EMP_SAL,
       M.ENAME AS MANAGER,
       M.SAL AS MGR_SAL
FROM EMP E
JOIN EMP M
ON M.MGR = E.EMPNO
WHERE E.SAL > M.SAL;


-- Q6. Display employees whose manager is a MANAGER.

SELECT E.ENAME AS EMPLOYEE,
       E.JOB AS EMP_JOB,
       M.ENAME AS MANAGER,
       M.JOB AS MGR_JOB
FROM EMP E
JOIN EMP M
ON M.MGR = E.EMPNO
WHERE M.JOB = 'MANAGER';


-- Q7. Display employee name, employee location,
-- manager name and manager location.

SELECT E.ENAME AS EMPLOYEE,
       D1.LOC AS EMP_LOCATION,
       M.ENAME AS MANAGER,
       D2.LOC AS MGR_LOCATION
FROM EMP E
JOIN EMP M
ON M.MGR = E.EMPNO
JOIN DEPT D1
ON E.DEPTNO = D1.DEPTNO
JOIN DEPT D2
ON M.DEPTNO = D2.DEPTNO;


/*
========================================================
TOPICS COVERED TODAY
========================================================

1. SELF JOIN
2. Table Aliases
3. Joining a table with itself
4. Comparing employee and manager data
5. SELF JOIN with WHERE condition
6. SELF JOIN with salary comparison
7. SELF JOIN with another table
8. Multiple JOIN conditions
9. INNER JOIN with SELF JOIN


========================================================
KEY CONCEPT
========================================================

SELF JOIN is used when rows of the same table
have a relationship with each other.

Example:

Employee -> Manager

EMPLOYEE.MGR = MANAGER.EMPNO

========================================================
*/


