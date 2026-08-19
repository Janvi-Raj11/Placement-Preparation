/*
==========================================================
                    SQL SEQUENCE
==========================================================

Today's Topic:
SEQUENCE — CREATE, NEXTVAL, INCREMENT BY, MAXVALUE,
MINVALUE, CYCLE, CACHE

==========================================================
*/


/*
----------------------------------------------------------
1. Create a sequence to generate numbers from 1 to 10
----------------------------------------------------------
*/

CREATE SEQUENCE seq1
START WITH 1
INCREMENT BY 1
MAXVALUE 10;

-- Fetch the next value
SELECT seq1.NEXTVAL FROM dual;

/*
Output:
1
2
3
...
10

After reaching 10:

ORA-08004: sequence SEQ1.NEXTVAL exceeds MAXVALUE

Learning:
NEXTVAL generates the next value of the sequence.
*/


/*
----------------------------------------------------------
2. Create a sequence to generate numbers from 5 to 10
----------------------------------------------------------
*/

CREATE SEQUENCE seq2
START WITH 5
INCREMENT BY 1
MAXVALUE 10;

-- Values generated:
-- 5
-- 6
-- 7
-- 8
-- 9
-- 10


/*
----------------------------------------------------------
3. Create a sequence to generate even numbers from 1 to 10
----------------------------------------------------------
*/

CREATE SEQUENCE seq3
START WITH 2
INCREMENT BY 2
MAXVALUE 10;

-- Values:
-- 2
-- 4
-- 6
-- 8
-- 10

/*
Next value would be 12,
but 12 exceeds MAXVALUE 10.

Therefore:
ORA-08004
*/


/*
----------------------------------------------------------
4. Create a sequence to generate odd numbers from 1 to 10
----------------------------------------------------------
*/

CREATE SEQUENCE seq4
START WITH 1
INCREMENT BY 2
MAXVALUE 10;

-- Values:
-- 1
-- 3
-- 5
-- 7
-- 9

/*
Learning:
By changing INCREMENT BY,
we can control the difference between consecutive values.
*/


/*
----------------------------------------------------------
5. Create a sequence to generate numbers from 10 to 1
----------------------------------------------------------
*/

/*
Question:
Create a sequence starting from 10 and decreasing by 1.
*/

CREATE SEQUENCE seq5
START WITH 10
INCREMENT BY -1
MAXVALUE 10;

-- Values generated:
-- 10
-- 9
-- 8
-- 7
-- 6
-- 5
-- 4
-- 3
-- 2
-- 1
-- 0
-- -1
-- -2
-- ...

/*
My Mistake:

I expected the sequence to stop at 1 because
I only specified MAXVALUE 10.

Important Learning:

For a descending sequence,
MAXVALUE does NOT define the lower limit.

We should use MINVALUE.
*/


/*
----------------------------------------------------------
6. Descending Sequence With MINVALUE
   (Generate numbers from 10 to 1)
----------------------------------------------------------
*/

CREATE SEQUENCE seq6
START WITH 10
INCREMENT BY -1
MAXVALUE 10
MINVALUE 1;

-- Values:
-- 10
-- 9
-- 8
-- 7
-- 6
-- 5
-- 4
-- 3
-- 2
-- 1

/*
Learning:

For ascending sequence:
MAXVALUE = upper limit

For descending sequence:
MINVALUE = lower limit
*/


/*
----------------------------------------------------------
7. CYCLE
   (Generate numbers from 1 to 5 and make it cycle)
----------------------------------------------------------
*/

CREATE SEQUENCE seq7
START WITH 1
INCREMENT BY 1
MAXVALUE 5
CYCLE
CACHE 2;

-- Values:
-- 1
-- 2
-- 3
-- 4
-- 5
-- 1
-- 2
-- 3
-- 4
-- 5
-- 1
-- 2
-- ...

/*
Learning:

CYCLE means:
After reaching the limit, start again from the beginning.

Without CYCLE:
1 2 3 4 5 -> ERROR

With CYCLE:
1 2 3 4 5 -> 1 2 3...
*/


/*
----------------------------------------------------------
8. CACHE
----------------------------------------------------------
*/

/*
Question:
What does CACHE do in a sequence?

Example:
*/

CREATE SEQUENCE seq8
START WITH 1
INCREMENT BY 1
MAXVALUE 5
CYCLE
CACHE 2;

/*
CACHE 2 means:

Oracle can preallocate/cache 2 sequence values
for better performance.

Important:

CACHE is mainly a performance feature.

It does NOT mean:
Only 2 values can be generated.

The sequence can continue generating values normally.
*/


/*
----------------------------------------------------------
9. Using Sequence With a Table
----------------------------------------------------------
*/

/*
Question:
Create a student table and automatically generate
student IDs using a sequence.
*/


-- Step 1: Create table

CREATE TABLE stud(
    s_id NUMBER PRIMARY KEY,
    name VARCHAR(30)
);


-- Step 2: Create sequence

CREATE SEQUENCE s_id
START WITH 1
INCREMENT BY 1
MAXVALUE 5;


-- Step 3: Insert records using NEXTVAL

INSERT INTO stud VALUES(s_id.NEXTVAL, 'janvi');

INSERT INTO stud VALUES(s_id.NEXTVAL, 'simran');

INSERT INTO stud VALUES(s_id.NEXTVAL, 'shivangi');

INSERT INTO stud VALUES(s_id.NEXTVAL, 'khushi');

INSERT INTO stud VALUES(s_id.NEXTVAL, 'DKSINGH');


-- Result:

/*
S_ID    NAME
-----   -----------
1       janvi
2       simran
3       shivangi
4       khushi
5       DKSINGH
*/


/*
----------------------------------------------------------
My Mistake: Inserting More Than MAXVALUE
----------------------------------------------------------
*/

-- Query:

INSERT INTO stud VALUES(s_id.NEXTVAL, 'VED RAJ');

/*
Error:

ORA-08004: sequence S_ID.NEXTVAL exceeds MAXVALUE

Why?

The sequence was:

START WITH 1
INCREMENT BY 1
MAXVALUE 5

So it generated:

1
2
3
4
5

The next value would be:

6

But:

6 > MAXVALUE 5

Therefore Oracle throws:

ORA-08004
*/


/*
==========================================================
              IMPORTANT SEQUENCE CONCEPTS
==========================================================
*/


/*
----------------------------------------------------------
START WITH
----------------------------------------------------------

Defines the first value.

Example:

START WITH 5

First value:

5
*/


/*
----------------------------------------------------------
INCREMENT BY
----------------------------------------------------------

Defines the difference between values.

Example:

INCREMENT BY 2

Values:

1
3
5
7
...

Negative increment creates a descending sequence:

INCREMENT BY -1

Values:

10
9
8
7
...
*/


/*
----------------------------------------------------------
MAXVALUE
----------------------------------------------------------

Defines the maximum allowed value for
an ascending sequence.

Example:

MAXVALUE 10
*/


/*
----------------------------------------------------------
MINVALUE
----------------------------------------------------------

Defines the minimum allowed value,
especially important for descending sequences.

Example:

MINVALUE 1
*/


/*
----------------------------------------------------------
CYCLE
----------------------------------------------------------

Restarts the sequence after reaching its limit.

Example:

1 2 3 4 5 1 2 3...
*/


/*
----------------------------------------------------------
NOCYCLE
----------------------------------------------------------

Default behavior.

The sequence does not restart after reaching the limit.

Example:

1 2 3 4 5 -> ERROR
*/


/*
----------------------------------------------------------
CACHE
----------------------------------------------------------

Preallocates sequence numbers for better performance.

Example:

CACHE 20
*/


/*
----------------------------------------------------------
NEXTVAL
----------------------------------------------------------

Generates the next sequence value.
*/

SELECT seq1.NEXTVAL FROM dual;


/*
----------------------------------------------------------
CURRVAL
----------------------------------------------------------

Returns the current value of the sequence
in the current session.

Example:
*/

SELECT seq1.CURRVAL FROM dual;

/*
Important:

CURRVAL can be used only after NEXTVAL
has been used in that session.
*/


/*
==========================================================
                 WHAT I LEARNED TODAY
==========================================================

1. A sequence generates numeric values automatically.

2. NEXTVAL generates the next value.

3. CURRVAL gives the current value.

4. START WITH defines the starting value.

5. INCREMENT BY defines the difference between values.

6. Positive increment creates an ascending sequence.

7. Negative increment creates a descending sequence.

8. MAXVALUE defines the upper limit.

9. MINVALUE defines the lower limit.

10. CYCLE restarts the sequence after reaching the limit.

11. NOCYCLE stops the sequence at the limit.

12. CACHE improves sequence performance by
    preallocating values.

13. Sequence names must be unique.

14. A sequence can be used to automatically generate
    primary-key values.

15. DUAL is commonly used to fetch sequence values
    using NEXTVAL.


==========================================================
                 INTERVIEW QUICK REVISION
==========================================================

Q1. What is a sequence?

A sequence is a database object used to generate
unique numeric values automatically.


Q2. How do you get the next sequence value?

SELECT sequence_name.NEXTVAL FROM dual;


Q3. What is NEXTVAL?

NEXTVAL generates the next value of the sequence.


Q4. What is CURRVAL?

CURRVAL returns the current value generated by
the sequence in the current session.


Q5. Difference between MAXVALUE and MINVALUE?

MAXVALUE -> upper limit
MINVALUE -> lower limit


Q6. What does CYCLE do?

It restarts the sequence after reaching its limit.


Q7. What happens without CYCLE?

The sequence throws an error after reaching its limit.


Q8. Can two sequences have the same name
    in the same schema?

No.


Q9. Why did ORA-00955 occur?

Because the sequence name already existed.


Q10. Why did ORA-08004 occur?

Because the next sequence value would exceed
MAXVALUE or go below MINVALUE.


==========================================================
                    TODAY'S SUMMARY
==========================================================

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

==========================================================
*/