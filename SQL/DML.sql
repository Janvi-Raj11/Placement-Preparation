
### SQL DML (Data Manipulation Language) - Oracle Practice Notes

### Topics Covered

* `CREATE TABLE AS SELECT`

* `INSERT`

* `UPDATE`

* `DELETE`

* `Subquery with UPDATE`

* `Subquery with DELETE`

* Common Oracle Errors

### EMPC vs EMPCC

|
Table

|

Purpose

|
| --- | --- |
|

`EMP`

|

Original Oracle SCOTT table.

|
|

`EMPCC`

|

Duplicate of `EMP` with data (`CREATE TABLE AS SELECT`).

|
|

`EMPCCC`

|

Structure only, no data (`WHERE 1!=1`).

|

### Copy Table with Data

SQL

```
CREATE TABLE empcc AS
SELECT * FROM emp;
```

Result: Table structure + all 14 rows are copied.


### Copy Only Structure

SQL

```
CREATE TABLE empccc AS
SELECT * FROM emp
WHERE 1!=1;
```

Result: Table structure is copied but 0 rows are inserted.


### Practice Questions with Solutions

### Question 1

Create a duplicate table with all employee records.

SQL

```
CREATE TABLE empcc AS
SELECT * FROM emp;
```

Learning

* Copies both structure and data.



### Question 2

Create a table with only the structure.

SQL

```
CREATE TABLE empccc AS
SELECT * FROM emp
WHERE 1!=1;
```

Learning

* `WHERE 1!=1` is always false.

* Creates an empty table with the same columns.


### Question 3

Update SMITH's name to JANVI.

SQL

```
UPDATE empcc
SET ename='JANVI'
WHERE ename='SMITH';
```

Learning

* `UPDATE` changes existing records.

* `WHERE` prevents updating every row.


### Question 4

Delete employee JANVI.

SQL

```
DELETE FROM empcc
WHERE ename='JANVI';
```

Learning

* `DELETE` removes selected rows.

* Always use `WHERE`.



### Question 5

Update the salary of employees in the EMPC table by 10% only if they are working as CLERK.
SQL

```
UPDATE empcc
SET sal=sal+(sal*10/100)
WHERE job='CLERK';
```

Learning

* Existing column values can be used inside `UPDATE`.

* Three CLERK salaries increased.


### Question 6

Delete all records from the EMPC table where employees are working as ANALYST.
SQL

```
DELETE FROM empcc
WHERE job='ANALYST';
```

Learning

* Two ANALYST records were deleted.


### Question 7

Update the job of employees in the EMPC table to MANAGER if they are earning a salary greater than 2000 and are not earning any commission (COMM IS NULL).
SQL

```
UPDATE empcc
SET job='MANAGER'
WHERE sal>2000
AND comm IS NULL;
```

Learning

* `IS NULL` is used instead of `= NULL`.

* Multiple conditions can be combined with `AND`.



### Question 8

Update the salary of employees in the EMPC table by 40% if they are earning a salary less than FORD's salary.
SQL

```
UPDATE empcc
SET sal=sal+(sal*40/100)
WHERE sal<(
    SELECT sal
    FROM empcc
    WHERE ename='FORD'
);
```

Learning

* `UPDATE` can use subqueries inside `WHERE`.

* Returned 0 rows because FORD had already been deleted.



Delete all records from the EMPC table where employees are earning a duplicate salary (salary that appears more than once).

SQL

```
DELETE FROM empcc
WHERE sal IN(
    SELECT COUNT(*)
    FROM emp
    GROUP BY sal
    HAVING COUNT(*)>1
);
```

Result:

```
0 rows deleted.
```

### Why?

The subquery returned counts instead of salary values.


### Tips

* `EMPCC` → Structure + Data.

* `EMPCCC` → Structure Only.

* Always use `WHERE` with `UPDATE` and `DELETE`.

* `IN` accepts only one column from a subquery.

* Use `IS NULL`, not `= NULL`.

