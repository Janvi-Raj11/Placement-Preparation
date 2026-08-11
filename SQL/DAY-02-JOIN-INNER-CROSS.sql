# SQL JOIN PRACTICE – DAY 02

## 1. Display employee name, salary and location

### My Query:

```sql
SELECT ename,sal,loc
FROM emp INNER JOIN dept
ON emp.deptno=dept.deptno;
```

---

## 2. Display employee name, job and department name

### My Query:

```sql
SELECT ename,job,dname
FROM emp INNER JOIN dept
ON emp.deptno=dept.deptno;
```

---

## 3. Display employee name, department number and location

### My Query:

```sql
SELECT ename,deptno,loc
FROM emp INNER JOIN dept
ON emp.deptno=dept.deptno;
```

### Mistake:

`DEPTNO` exists in both EMP and DEPT tables, so Oracle gives an ambiguous column error.

### Correct Query:

```sql
SELECT ename,emp.deptno,loc
FROM emp INNER JOIN dept
ON emp.deptno=dept.deptno;
```

---

## 4. Display employees name whose salary is greater than 2000 with location

### My Query:

```sql
SELECT ename,sal,loc
FROM emp INNER JOIN dept
ON emp.deptno=dept.deptno
WHERE sal>2000;
```

---

## 5. Display employees name,location, job who are SALESMAN, CLERK or ANALYST

### My Query:

```sql
SELECT ename,job,loc
FROM emp INNER JOIN dept
ON emp.deptno=dept.deptno
WHERE job IN('SALESMAN','CLERK','ANALYST');
```

---

## 6. Count employees in each location

### My Query:

```sql
SELECT COUNT(*),LOC
FROM emp INNER JOIN dept
ON emp.deptno=dept.deptno
GROUP BY LOC;
```

---

## 7. Display manager name,location

### My Query:


```sql
SELECT LOC,ENAME
FROM emp INNER JOIN dept
ON emp.deptno=dept.deptno
WHERE EMPNO IN(SELECT MGR FROM EMP);
```

---

## 8. Display employee name, salary and salary grade

### My Query:





## 10. Display employees name from GOA, CHICAGO or NEW YORK

### My Query:

`GOA` is not present in the DEPT table, so only CHICAGO and NEW YORK return results.


```sql
SELECT LOC,ENAME
FROM emp INNER JOIN dept
ON emp.deptno=dept.deptno
WHERE LOC IN('GOA','CHICAGO','NEW YORK');
```

---

# IMPORTANT MISTAKES I MADE

1. Ambiguous `DEPTNO` → use `EMP.DEPTNO` or `DEPT.DEPTNO`

