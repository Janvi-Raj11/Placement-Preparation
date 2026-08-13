
# DAY 3— SQL FUNCTIONS
### Topics I COVERED

```text
-- DAY 3: SQL FUNCTIONS
-- Topics:
-- 1. String Functions
-- 2. LOWER()
-- 3. UPPER()
-- 4. INITCAP()
-- 5. SUBSTR()
-- 6. REPLACE()
-- 7. CONCAT()
-- 8. INSTR()
-- 9. TRIM()
-- 10. LENGTH()
-- 11. Date Functions
-- 12. ADD_MONTHS()
-- 13. EXTRACT()
-- 14. LAST_DAY()
-- 15. MOD()
-- 16. CREATE TABLE
-- 17. INSERT INTO
-- 18. SUBSTR() + INSTR()


## 1. LOWER()

**Question:** Display all employee names in lowercase.

```sql
SELECT LOWER(ENAME)
FROM EMP;
```

---

## 2. UPPER()

**Question:** Display all employee names in uppercase.

```sql
SELECT UPPER(ENAME)
FROM EMP;
```

---

## 3. INITCAP()

**Question:** Convert the string `'janvi is kind'` into proper case.

```sql
SELECT INITCAP('janvi is kind')
FROM DUAL;
```

---

## 4. SUBSTR()

**Question:** Display 5 characters from `'janvi'`, starting from the 3rd character.

```sql
SELECT SUBSTR('janvi',3,5)
FROM DUAL;
```

---

## 5. REPLACE()

**Question:** Replace `'janvi'` with `'khushi'` in the string `'janvi'`.

```sql
SELECT REPLACE('janvi','janvi','khushi')
FROM DUAL;
```

---

## 6. CONCAT()

**Question:** Concatenate `'janvi'` and `'khushi'`.

```sql
SELECT CONCAT('janvi','khushi')
FROM DUAL;
```

---

## 7. INSTR()

**Question:** Find the 3rd occurrence of `'i'` in `'janviii'`.

```sql
SELECT INSTR('janviii','i',1,3)
FROM DUAL;
```

---


---

## 9. TRIM LEADING

**Question:** Remove the leading `'j'` from `'janviii'`.

```sql
SELECT TRIM(LEADING 'j' FROM 'janviii')
FROM DUAL;
```

---

## 10. TRIM LEADING — CHARACTER NOT PRESENT

**Question:** Try to remove leading `'i'` from `'janviii'`.

```sql
SELECT TRIM(LEADING 'i' FROM 'janviii')
FROM DUAL;
```

---

## 11. TRIM TRAILING

**Question:** Remove trailing `'i'` characters from `'janviii'`.

```sql
SELECT TRIM(TRAILING 'i' FROM 'janviii')
FROM DUAL;
```

---

## 12. TRIM BOTH

**Question:** Remove `'i'` characters from both ends of `'janviii'`.

```sql
SELECT TRIM(BOTH 'i' FROM 'janviii')
FROM DUAL;
```

---

## 13. TRIM BOTH — MULTIPLE CHARACTERS

**Question:** Remove `'i'` characters from both ends of `'iiiijanviii'`.

```sql
SELECT TRIM(BOTH 'i' FROM 'iiiijanviii')
FROM DUAL;
```

---

# DATE FUNCTIONS

## 14. ADD_MONTHS()

**Question:** Add 12 months to `13-AUG-2026`.

```sql
SELECT ADD_MONTHS('13-AUG-2026',12)
FROM DUAL;
```

---

## 15. EXTRACT YEAR

**Question:** Display the year from the `HIREDATE` of every employee.

```sql
SELECT EXTRACT(YEAR FROM HIREDATE)
FROM EMP;
```

---

## 16. LAST_DAY()

**Question:** Find the last day of February 2026.

```sql
SELECT LAST_DAY('12-FEB-2026')
FROM DUAL;
```

---







===============================================================QUESTION=================================================================

# SUBSTR() PRACTICE

## 17. FIRST CHARACTER

**Question:** Display the first character of every employee name.

```sql
SELECT SUBSTR(ENAME,1,1)
FROM EMP;
```

---

## 18. FIRST TWO CHARACTERS

**Question:** Display the first two characters of every employee name.

```sql
SELECT SUBSTR(ENAME,1,2)
FROM EMP;
```

---

## 20. THIRD CHARACTER

**Question:** Display only the third character of every employee name.

```sql
SELECT SUBSTR(ENAME,3,1)
FROM EMP;
```

---

## 21. FROM THIRD CHARACTER(***************MYSELF************)

**Question:** Display every employee name starting from its third character.

```sql
SELECT SUBSTR(ENAME,3)
FROM EMP;
```

---

## 22. LAST CHARACTER

**Question:** Display the last character of every employee name.

```sql
SELECT SUBSTR(ENAME,-1)
FROM EMP;
```

---

## 23. COMPLETE NAME USING SUBSTR()

**Question:** Display the complete employee name using `SUBSTR()`.

```sql
SELECT SUBSTR(ENAME,1)
FROM EMP;
```

---

## 24. LAST TWO CHARACTERS (****************OUTPUT SAME***************)

**Question:** Display the last two characters of every employee name.

```sql
SELECT SUBSTR(ENAME,-2)
FROM EMP;
```

---

## 25. LAST TWO CHARACTERS WITH LENGTH (**************OUTPUT SAME ABOVE ONE AND THIS ONE************************)

**Question:** Display the last two characters using `SUBSTR()` with a length argument.

```sql
SELECT SUBSTR(ENAME,-2,2)
FROM EMP;
```

---

## 26. REMOVE FIRST CHARACTER (***************MYSELF************)

**Question:** Display every employee name except its first character.

```sql
SELECT SUBSTR(ENAME,2)
FROM EMP;
```

---

## 27. FIRST HALF OF NAME

**Question:** Display the first half of every employee name.

```sql
SELECT SUBSTR(ENAME,1,LENGTH(ENAME)/2)
FROM EMP;
```

---

## 28. FROM MIDDLE POSITION (***************____MYSELF____************ That query does not correctly handle the "middle position" in all cases,)

**Question:** Display each employee name starting from the middle position.

```sql
SELECT SUBSTR(ENAME,LENGTH(ENAME)/2)
FROM EMP;
```

---

# LENGTH() + REPLACE()

## 29. COUNT CHARACTER OCCURRENCE

**Question:** Find how many times `'p'` occurs in `'pushpa'`.

```sql
SELECT LENGTH('pushpa') - LENGTH(REPLACE('pushpa','p'))
FROM DUAL;
```

---

## 30. REMOVE CHARACTER USING REPLACE() (***************____MYSELF____************)

**Question:** Remove all occurrences of `'p'` from `'pushpa'`.

```sql
SELECT REPLACE('pushpa','p')
FROM DUAL;
```

---

## 31. LENGTH AFTER REPLACE()(***************____MYSELF____************)

**Question:** Find the length of `'pushpa'` after removing all `'p'` characters.

```sql
SELECT LENGTH(REPLACE('pushpa','p'))
FROM DUAL;
```

---

# INSTR() PRACTICE

## 32. FIRST OCCURRENCE OF A

**Question:** Find the first occurrence of `'A'` in every employee name.

```sql
SELECT INSTR(ENAME,'A',1,1)
FROM EMP;
```

---

## 33. INSTR() DEFAULT

**Question:** Find the first occurrence of `'A'` in every employee name.

```sql
SELECT INSTR(ENAME,'A')
FROM EMP;
```

---

## 34. INSTR() FROM POSITION 2

**Question:** Find the position of the second occurrence of 'A'.

```sql
SELECT INSTR(ENAME,'A',1,2)
FROM EMP;
```

---

## 36. FIND FIRST SPACE

**Question:** Find the position of the first space in `' man oj  '`.

```sql
SELECT INSTR(' man oj  ',' ')
FROM DUAL;
```

---

## 37. FIND SPACE FROM POSITION 3 (***************____MYSELF____************)

**Question:** Find the position of the first space in `' man oj  '` starting from position 3.

```sql
SELECT INSTR(' man oj  ',' ',3)
FROM DUAL;
```

---

## 38. FIND @ IN EMAIL   (Confused in Question)

**Question:** Find the position of `@` in `'manoj@gmail.com'`.

```sql
SELECT INSTR('manoj@gmail.com','@')
FROM DUAL;
```

---

# EXTRACT()

## 39. EXTRACT MONTH

**Question:** Display the employee name and the month in which the employee was hired.

```sql
SELECT ENAME, EXTRACT(MONTH FROM HIREDATE)
FROM EMP;
```

---

## 40. EXTRACT YEAR WITH ALIAS

**Question:** Display employee name and hiring year with the alias `YR`.

```sql
SELECT ENAME, EXTRACT(YEAR FROM HIREDATE) AS YR
FROM EMP;
```

---

# MOD()

## 41. EVEN SALARY

**Question:** Display employees whose salary is even.

```sql
SELECT *
FROM EMP
WHERE MOD(SAL,2)=0;
```

---

## 42. ODD SALARY

**Question:** Display employees whose salary is odd.

```sql
SELECT *
FROM EMP
WHERE MOD(SAL,2)!=0;
```

---



# CREATE TABLE / INSERT

## 43. CREATE TABLE

**Question:** Create a table named `FREEDOM_FIGHTERS` with a `NAME` column that can store up to 50 characters.

```sql
CREATE TABLE FREEDOM_FIGHTERS(
    NAME VARCHAR(50)
);
```

---

## 44. INSERT DATA

**Question:** Insert `manoj a matt` into the table.

```sql
INSERT INTO FREEDOM_FIGHTERS
VALUES('manoj a matt');
```

---

## 45. INSERT DATA

**Question:** Insert `subhas chandra boss` into the table.

```sql
INSERT INTO FREEDOM_FIGHTERS
VALUES('subhas chandra boss');
```

---

## 46. INSERT DATA

**Question:** Insert `sardar vallabhbhai patel` into the table.

```sql
INSERT INTO FREEDOM_FIGHTERS
VALUES('sardar vallabhbhai patel');
```

---

## 47. INSERT DATA

**Question:** Insert `mahatma gandhi jii` into the table.

```sql
INSERT INTO FREEDOM_FIGHTERS
VALUES('mahatma gandhi jii');
```

---

# SUBSTR() + INSTR()

## 48. FIRST WORD

**Question:** Display the first Name from every freedom fighter's full name.

```sql
SELECT SUBSTR(NAME,1,INSTR(NAME,' ',1,1)-1)
FROM FREEDOM_FIGHTERS;
```

---

## 49. SECOND WORD()

**Question:** Display the second Name from every freedom fighter's full name.

```sql
SELECT SUBSTR(
    NAME,
    INSTR(NAME,' ',1,1)+1,
    INSTR(NAME,' ',1,2)-INSTR(NAME,' ',1,1)-1
)
FROM FREEDOM_FIGHTERS;
```

---

## 50. LAST WORD

**Question:** Display the last name from every freedom fighter's full name.

```sql
SELECT SUBSTR(NAME,INSTR(NAME,' ',1,2)+1)
FROM FREEDOM_FIGHTERS;
```

---

## 51. DISPLAY EVERYTHING AFTER FIRST SPACE (***************____MYSELF____************)

**Question:** Display everything after the first space in each freedom fighter's name.

```sql
SELECT SUBSTR(NAME,INSTR(NAME,' ',1,1)+1)
FROM FREEDOM_FIGHTERS;
```

---



## Mistakes Learned

String/date values require proper quotes.
Oracle uses MOD() instead of %.
SUBSTR() third argument represents length, not ending position.
INSTR() returns a position.
FROM DUAL is used when testing a single expression.
EXTRACT() and LAST_DAY() have different syntaxes.
```

