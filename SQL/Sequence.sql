# SQL SEQUENCE

## Today's Topic

SEQUENCE — CREATE, NEXTVAL, INCREMENT BY, MAXVALUE, MINVALUE, CYCLE, CACHE

---

## 1. Create a sequence to generate numbers from 1 to 10.

### Question:

```sql
CREATE SEQUENCE seq1
START WITH 1
INCREMENT BY 1
MAXVALUE 10;
```

### Fetch the next value:

```sql
SELECT seq1.NEXTVAL FROM dual;
```

Output:

```text
1
2
3
...
10
```

After reaching 10:

```sql
SELECT seq1.NEXTVAL FROM dual;
```

Error:

```text
ORA-08004: sequence SEQ1.NEXTVAL exceeds MAXVALUE
```

### Learning:

NEXTVAL generates the next value of the sequence.
---

## 2. Create a sequence to generate numbers from 5 to 10.

### Question:

Create a sequence starting from 5 and incrementing by 1 up to 10.

```sql
CREATE SEQUENCE seq2
START WITH 5
INCREMENT BY 1
MAXVALUE 10;
```

Values generated:

```text
5
6
7
8
9
10
```

## 3. Create a sequence to generate even numbers from 1 to 10.

### Question:

Create a sequence starting from 2 and incrementing by 2 up to 10.

```sql
CREATE SEQUENCE seq3
START WITH 2
INCREMENT BY 2
MAXVALUE 10;
```

Values:

```text
2
4
6
8
10
```

Next value would be 12, but 12 exceeds MAXVALUE 10.

Therefore:

```text
ORA-08004
```

---

## 4. Odd Number Sequence(Create a sequence to generate odd numbers from 1 to 10.)

### Question:

Create a sequence that generates odd numbers from 1 to 10.

```sql
CREATE SEQUENCE seq4
START WITH 1
INCREMENT BY 2
MAXVALUE 10;
```

Values:

```text
1
3
5
7
9
```

### Learning:

By changing `INCREMENT BY`, we can control the difference between consecutive sequence values.

---

# 5. Descending Sequence

### Question:

Create a sequence starting from 10 and decreasing by 1.

```sql
CREATE SEQUENCE seq5
START WITH 10
INCREMENT BY -1
MAXVALUE 10;
```

Values generated:

```text
10
9
8
7
6
5
4
3
2
1
0
-1
-2
...
```

### My mistake:

I expected the sequence to stop at 1 because I only specified:

```sql
MAXVALUE 10
```

### Important Learning:

For a descending sequence, `MAXVALUE` does NOT define the lower limit.

We should use `MINVALUE`.

---

# 6. Descending Sequence With MINVALUE(Create a sequence to generate numbers from 10 to 1.)

### Question:

Create a descending sequence from 10 to 1.

```sql
CREATE SEQUENCE seq6
START WITH 10
INCREMENT BY -1
MAXVALUE 10
MINVALUE 1;
```

Values:

```text
10
9
8
7
6
5
4
3
2
1
```

### Learning:

For ascending sequence:

```text
MAXVALUE = upper limit
```

For descending sequence:

```text
MINVALUE = lower limit
```

---

# 7. CYCLE

### Question:

Create a sequence from 1 to 5 that starts again from 1 after reaching 5.(Create a sequence to generate numbers from 1 to 5 and make it cycle)

```sql
CREATE SEQUENCE seq7
START WITH 1
INCREMENT BY 1
MAXVALUE 5
CYCLE
CACHE 2;
```

Values:

```text
1
2
3
4
5
1
2
3
4
5
1
2
...
```

### Learning:

`CYCLE` means:

```text
After reaching the limit, start again from the beginning.
```

Without `CYCLE`:

```text
1 2 3 4 5 → ERROR
```

With `CYCLE`:

```text
1 2 3 4 5 → 1 2 3...
```

---

# 8. CACHE

### Question:

What does CACHE do in a sequence?

Example:

```sql
CREATE SEQUENCE seq7
START WITH 1
INCREMENT BY 1
MAXVALUE 5
CYCLE
CACHE 2;
```

`CACHE 2` means Oracle can preallocate/cache 2 sequence values for better performance.

### Important:

`CACHE` is mainly a performance feature.

It does NOT mean:

```text
Only 2 values can be generated.
```

The sequence can continue generating values normally.

---

# 9. Using Sequence With a Table

### Question:

Create a student table and automatically generate student IDs using a sequence.

### Step 1: Create table

```sql
CREATE TABLE stud(
    s_id NUMBER PRIMARY KEY,
    name VARCHAR(30)
);
```

### Step 2: Create sequence

```sql
CREATE SEQUENCE s_id
START WITH 1
INCREMENT BY 1
MAXVALUE 5;
```

### Step 3: Insert records using NEXTVAL

```sql
INSERT INTO stud VALUES(s_id.NEXTVAL, 'janvi');

INSERT INTO stud VALUES(s_id.NEXTVAL, 'simran');

INSERT INTO stud VALUES(s_id.NEXTVAL, 'shivangi');

INSERT INTO stud VALUES(s_id.NEXTVAL, 'khushi');

INSERT INTO stud VALUES(s_id.NEXTVAL, 'DKSINGH');
```

Result:

```text
S_ID    NAME
-----   -----------
1       janvi
2       simran
3       shivangi
4       khushi
5       DKSINGH
```

---

## 10. My Mistake: Inserting More Than MAXVALUE

### Query:

```sql
INSERT INTO stud VALUES(s_id.NEXTVAL, 'VED RAJ');
```

Error:

```text
ORA-08004: sequence S_ID.NEXTVAL exceeds MAXVALUE
```

### Why?

The sequence was:

```sql
START WITH 1
INCREMENT BY 1
MAXVALUE 5
```

So it generated:

```text
1
2
3
4
5
```

The next value would be:

```text
6
```

But:

```text
6 > MAXVALUE 5
```

Therefore Oracle throws:

```text
ORA-08004
```

---

# IMPORTANT SEQUENCE CONCEPTS

## START WITH

Defines the first value.

Example:

```sql
START WITH 5
```

First value:

```text
5
```

---

## INCREMENT BY

Defines the difference between values.

Example:

```sql
INCREMENT BY 2
```

Values:

```text
1
3
5
7
...
```

Negative increment creates a descending sequence:

```sql
INCREMENT BY -1
```

Values:

```text
10
9
8
7
...
```

---

## MAXVALUE

Defines the maximum allowed value for an ascending sequence.

Example:

```sql
MAXVALUE 10
```

---

## MINVALUE

Defines the minimum allowed value, especially important for descending sequences.

Example:

```sql
MINVALUE 1
```

---

## CYCLE

Restarts the sequence after reaching its limit.

```sql
CYCLE
```

Example:

```text
1 2 3 4 5 1 2 3...
```

---

## NOCYCLE

Default behavior.

The sequence does not restart after reaching the limit.

```text
1 2 3 4 5 → ERROR
```

---

## CACHE

Preallocates sequence numbers for better performance.

Example:

```sql
CACHE 20
```

---

## NEXTVAL

Generates the next sequence value.

```sql
SELECT seq1.NEXTVAL FROM dual;
```

---

## CURRVAL

Returns the current value of the sequence in the current session.

Example:

```sql
SELECT seq1.CURRVAL FROM dual;
```

### Important:

`CURRVAL` can be used only after `NEXTVAL` has been used in that session.
---

# WHAT I LEARNED TODAY

* A sequence generates numeric values automatically.
* `NEXTVAL` generates the next value.
* `CURRVAL` gives the current value.
* `START WITH` defines the starting value.
* `INCREMENT BY` defines the difference between values.
* Positive increment creates an ascending sequence.
* Negative increment creates a descending sequence.
* `MAXVALUE` defines the upper limit.
* `MINVALUE` defines the lower limit.
* `CYCLE` restarts the sequence after reaching the limit.
* `NOCYCLE` stops the sequence at the limit.
* `CACHE` improves sequence performance by preallocating values.
* Sequence names must be unique.
* A sequence can be used to automatically generate primary-key values.
* `DUAL` is commonly used to fetch sequence values using `NEXTVAL`.

---

# INTERVIEW QUICK REVISION

### Q1. What is a sequence?

A sequence is a database object used to generate unique numeric values automatically.

### Q2. How do you get the next sequence value?

```sql
SELECT sequence_name.NEXTVAL FROM dual;
```

### Q3. What is NEXTVAL?

`NEXTVAL` generates the next value of the sequence.

### Q4. What is CURRVAL?

`CURRVAL` returns the current value generated by the sequence in the current session.

### Q5. Difference between MAXVALUE and MINVALUE?

```text
MAXVALUE → upper limit
MINVALUE → lower limit
```

### Q6. What does CYCLE do?

It restarts the sequence after reaching its limit.

### Q7. What happens without CYCLE?

The sequence throws an error after reaching its limit.

### Q8. Can two sequences have the same name in the same schema?

No.

### Q9. Why did ORA-00955 occur?

Because the sequence name already existed.

### Q10. Why did ORA-08004 occur?

Because the next sequence value would exceed `MAXVALUE` or go below `MINVALUE`.

---

# TODAY'S SUMMARY

```text
SEQUENCE
   |
   |-- START WITH
   |-- INCREMENT BY
   |-- MAXVALUE
   |-- MINVALUE
   |-- CYCLE / NOCYCLE
   |-- CACHE
   |
   |-- NEXTVAL
   |-- CURRVAL
   |
   |-- Used for automatic ID generation
```
