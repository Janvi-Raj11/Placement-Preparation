# SQL DENSE_RANK() Practice

## Topic: DENSE_RANK()

### Topics Covered

- DENSE_RANK()
- ORDER BY with DENSE_RANK()
- ASC and DESC ranking
- Finding Nth highest salary
- Finding Nth lowest salary
- Subquery with DENSE_RANK()
- PARTITION BY with DENSE_RANK()
- GROUP BY with aggregate functions
- DENSE_RANK() with JOIN
- Ranking within JOB
- Ranking within DEPTNO
- Ranking within LOCATION

---

## 1. Find the 3rd Highest Salary

### Question
Write a query to display the 3rd highest salary from the EMP table.

### Query

SELECT *
FROM (
    SELECT sal,
           DENSE_RANK() OVER(ORDER BY sal DESC) dk
    FROM emp
)
WHERE dk = 3;

### Output

2975

### Learning

DENSE_RANK() assigns the same rank to duplicate values and does not skip the next rank.

---

## 2. Find the 3rd Lowest Salary

### Question
Write a query to display the 3rd lowest salary.

### Query

SELECT *
FROM (
    SELECT sal,
           DENSE_RANK() OVER(ORDER BY sal ASC) dk
    FROM emp
)
WHERE dk = 3;

### Output

1100

### Learning

ORDER BY sal ASC
→ Lowest salary gets rank 1.

ORDER BY sal DESC
→ Highest salary gets rank 1.

---

## 3. Find 2nd, 4th and 5th Highest Salaries

### Question
Display employees having the 2nd, 4th and 5th highest salary ranks.

### Query

SELECT *
FROM (
    SELECT sal,
           DENSE_RANK() OVER(ORDER BY sal DESC) dk
    FROM emp
)
WHERE dk IN (2,4,5);

### Output

3000   2
3000   2
2850   4
2450   5
---

## 4. Filtering SAL Instead of RANK

### Question
Find employees having the 3rd, 5th and 6th lowest salary ranks.

SELECT *
FROM (
    SELECT sal,
           DENSE_RANK() OVER(ORDER BY sal ASC) dk
    FROM emp
)
WHERE dk IN (3,5,6);

---

## 5. Find Complete Employee Details of 5th Highest Salary

### Question
Display complete employee details of employees having the 5th highest salary.

### Query

SELECT *
FROM (
    SELECT emp.*,
           DENSE_RANK() OVER(ORDER BY sal DESC) dk
    FROM emp
)
WHERE dk = 5;

### Output

CLARK
SAL = 2450

### Learning

I used emp.* because I wanted all employee details instead of only salary.

---

## 6. Write a query to find employee details where employee earning top three lowest salary.

### Question
Display complete employee details having the 1st, 2nd and 3rd lowest salary ranks.

### Query

SELECT *
FROM (
    SELECT emp.*,
           DENSE_RANK() OVER(ORDER BY sal ASC) dk
    FROM emp
)
WHERE dk IN (1,2,3);

---

# DENSE_RANK() WITH PARTITION BY

## 7. Find Highest Salary in Each Job

### Question
Display the 1st highest-paid employee salary for each job.

### Query

SELECT *
FROM (
    SELECT sal,
           job,
           DENSE_RANK() OVER(
               PARTITION BY job
               ORDER BY sal DESC
           ) dk
    FROM emp
)
WHERE dk = 1;

### Learning

PARTITION BY job

means:

Divide employees into separate groups based on JOB and rank salaries separately inside each JOB.

---

## 8. Find Highest Salary in Each Department

### Question
Display the 1st highest salary from each department.

### Query

SELECT *
FROM (
    SELECT sal,
           deptno,
           DENSE_RANK() OVER(
               PARTITION BY deptno
               ORDER BY sal DESC
           ) dk
    FROM emp
)
WHERE dk = 1;

### Output

5000   10
3000   20
3000   20
2850   30

### Important Learning

Both employees having salary 3000 are returned because they have the same DENSE_RANK().

DENSE_RANK() gives the same rank to duplicate values.

---

## 9. Find Second Highest Salary in Each Department

### Question
Display the second-highest distinct salary from each department.

### Query

SELECT *
FROM (
    SELECT sal,
           deptno,
           DENSE_RANK() OVER(
               PARTITION BY deptno
               ORDER BY sal DESC
           ) dk
    FROM emp
)
WHERE dk = 2;

### Output

2450   10
2975   20
1600   30

---

## 10. Find 3rd Lowest Salary in Each Job

### Question
Display the 3rd lowest salary in each job.

### Query

SELECT *
FROM (
    SELECT sal,
           job,
           DENSE_RANK() OVER(
               PARTITION BY job
               ORDER BY sal ASC
           ) dk
    FROM emp
)
WHERE dk = 3;

### Output

1100   CLERK
2975   MANAGER
1600   SALESMAN

---

# DENSE_RANK() WITH JOIN

## 11. Find Second Highest Salary in Each Location

### Question
Display the second-highest salary in each location.

### Query

SELECT *
FROM (
    SELECT sal,
           loc,
           DENSE_RANK() OVER(
               PARTITION BY loc
               ORDER BY sal DESC
           ) dk
    FROM emp e, dept d
    WHERE e.deptno = d.deptno
)
WHERE dk = 2;

### Output

1600   CHICAGO
2975   DALLAS
2450   NEW YORK

### Concepts Used

JOIN
+
DENSE_RANK()
+
PARTITION BY
+
ORDER BY
+
Subquery

---

# GROUP BY PRACTICE

## 12. Find Maximum Salary for Each Job

### Question
Display the maximum salary for each job.

### Query

SELECT MAX(sal), job
FROM emp
GROUP BY job;

---

## 13. Find Maximum Salary for Each Department

### Question
Display the maximum salary for each department.

### Query

SELECT MAX(sal), deptno
FROM emp
GROUP BY deptno;

---

# MISTAKES I MADE TODAY

## Mistake 1: Wrong DENSE_RANK Syntax

Wrong:

DENSE RANK()

Correct:

DENSE_RANK()

---

## Mistake 2: Filtering SAL Instead of RANK

Wrong:

WHERE sal IN (3,5,6);

Correct:

WHERE dk IN (3,5,6);
---

## Mistake 3: Using Two Columns with IN

### Wrong Query

SELECT *
FROM emp
WHERE sal IN (
    SELECT MAX(sal), deptno
    FROM emp
    GROUP BY deptno
);

### Error

ORA-00913: too many values

### Reason

sal IN (...) expects one column from the subquery.

But the subquery returns two columns:

MAX(sal)
deptno

### Correct Query

SELECT *
FROM emp
WHERE sal IN (
    SELECT MAX(sal)
    FROM emp
    GROUP BY deptno
);

---

# IMPORTANT CONCEPT LEARNED

## Without PARTITION BY

DENSE_RANK() OVER(ORDER BY sal DESC)

Ranks all employees together.

Example:

5000  -> 1
3000  -> 2
3000  -> 2
2975  -> 3

---

## With PARTITION BY

DENSE_RANK() OVER(
    PARTITION BY deptno
    ORDER BY sal DESC
)

Ranks employees separately inside each department.

Example:

Department 10
→ Rank salaries only inside department 10

Department 20
→ Rank salaries only inside department 20

Department 30
→ Rank salaries only inside department 30

---

# TODAY'S LEARNING SUMMARY

Today's Topic: DENSE_RANK()

Covered:

1. DENSE_RANK() syntax
2. DENSE_RANK() with ORDER BY
3. ASC and DESC ranking
4. Finding Nth highest salary
5. Finding Nth lowest salary
6. Filtering ranks using WHERE
7. Filtering multiple ranks using IN
8. Using DENSE_RANK() inside a subquery
9. DENSE_RANK() with PARTITION BY
10. Ranking employees within each JOB
11. Ranking employees within each DEPTNO
12. Finding highest salary in each department
13. Finding second-highest salary in each department
14. Finding 3rd lowest salary in each job
15. DENSE_RANK() with JOIN
16. Ranking salaries based on LOCATION
17. GROUP BY with aggregate functions
18. MAX() with GROUP BY
19. Using subquery with GROUP BY
20. Difference between filtering SAL and filtering DK
21. Common Oracle SQL errors
22. Understanding why duplicate salaries receive the same DENSE_RANK()

---

# PENDING / NEED MORE PRACTICE

1. DENSE_RANK() + COUNT()
2. DENSE_RANK() + GROUP BY
3. Aggregate functions inside DENSE_RANK()
4. DENSE_RANK() with JOIN + GROUP BY

---

# KEY TAKEAWAY

DENSE_RANK() is mainly used when I need to rank rows and find Nth highest or lowest values.

PARTITION BY is used when I need ranking separately within each group.

Example:

DENSE_RANK() OVER(
    PARTITION BY deptno
    ORDER BY sal DESC
)

Meaning:

"Rank salaries separately inside each department."