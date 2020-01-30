
# SQL-4
# 4-2 : Number Functions Practice Activities 

# Display Oracle database employee last_name and salary for employee_ids between 100 and 102. 
# Include a third column that divides each salary by 1.55 and rounds the result to two decimal places. 

SELECT last_name, salary, ROUND(salary/1.55, 2) "Adjusted Salary"
FROM employees
WHERE employee_id BETWEEN 100 AND 102;



# Display employee last_name and salary for those employees who work in department 80.
# Give each of them a raise of 5.333% and truncate the result to two decimal places. 

SELECT last_name, salary, TRUNC(salary*1.05333, 2) "Adjusted Salary"
FROM employees
WHERE employee_id = 80 ;



# Use a MOD number function to determine whether 38873 is an even number or an odd number. 

SELECT CASE WHEN(38873, 2) = 1 THEN 'odd'
ELSE 'even'
END
AS "MOD"
FROM dual;



# Use the DUAL table to process the following numbers: 
# 845.553 - round to one decimal place 
# 30695.348 - round to two decimal places 
# 30695.348 - round to -2 decimal places 
# 2.3454 - truncate the 454 from the decimal place 

SELECT ROUND(845.553, 1) AS "Round 1 decimal",
       ROUND(30695.348, 2) AS "Round 2 decimal",
       ROUND(30695.348, -2) AS "Round -2 decimal",
       TRUNC(2.3454, 1) AS "Truncate"
FROM dual;



# Divide each employee’s salary by 3. Display only those employees’ last names and salaries who earn a salary that is a multiple of 3. 

SELECT last_name, salary
FROM employees
WHERE MOD(salary, 3) = 0;



# Divide 34 by 8. Show only the remainder of the division. Name the output as EXAMPLE.

SELECT MOD(34, 8) AS example
FROM DUAL;





# 4-3 : Date Functions Practice Activities Objectives 

# For DJs on Demand, display the number of months between the event_date of the Vigil wedding and today’s date. Round to the nearest month. 

SELECT name, ROUND(MONTHS_BETWEEN(SYSDATE, event_date)) AS "Number of Months"
FROM d_events
WHERE name = 'Vigil wedding';



# Display the days between the start of last summer’s school vacation break and the day school started this year. Assume 30.5 days per month. Name the output “Days.” 

SELECT ROUND(MONTHS_BETWEEN(TO_DATE('15-Aug-2019', 'dd-mm-yyyy'), 
             TO_DATE('15-May-2019', 'dd-mon-yyyy))*30.5, 0)  AS "Days"
FROM dual;



# Display the days between January 1 and December 31. 

SELECT TO_DATE('31-Jan-2019', 'dd-mon-yyyy') - TO_DATE('1-Jan-2019', 'dd-mon-yyyy') as "Days"
FROM dual;



# Using one statement, round today's date to the nearest month and nearest year, and truncate it to the nearest month and nearest year. Use an alias for each column. 

SELECT ROUND(TO_DATE(SYSDATE), 'month') AS "Round Month", ROUND(TO_DATE(SYSDATE), 'year') AS "Round Year",
       TRUNC(TO_DATE(SYSDATE), 'month') AS "Trunc Month", TRUNC(TO_DATE(SYSDATE), 'year') AS "Trunc Year"
FROM dual;



# Using one statement, round today's date to the nearest month and nearest year, and truncate it to the nearest month and nearest year. Use an alias for each column. 

SELECT LAST_DAY(TO_DATE('Jun-2015', 'mon-yyyy')) AS "Last day of June 2015"
FROM dual;



# Display the number of years between the Global Fast Foods employee Bob Miller’s birthday and today. Round to the nearest year. 

SELECT first_name|| ' ' || last_name AS "Name", ROUND(MONTHS_BETWEEN(SYSDATE, birthday)/12) as "Between Year"
FROM f_staffs
WHERE first_name = 'Bob';



# Your next appointment with the dentist is six months from today. On what day will you go to the dentist? Name the output, “Appointment.”
 
SELECT ADD_MONTHS(SYSDATE, 6) AS "Appointment"
FROM dual;



# The teacher said you have until the last day of this month to turn in your research paper. What day will this be? Name the output, “Deadline.” 

SELECT LAST_DAY(SYSDATE) AS "Deadline"
FROM dual;



# How many months between your birthday this year and January 1 next year?
 
SELECT TRUNC(MONTHS_BETWEEN(TO_DATE('01-jan-2020', 'dd-mon-yyyy'), TO_DATE(SYSDATE)),1) AS "Months to next January"
FROM dual;




# What’s the date of the next Friday after your birthday this year? Name the output, “First Friday.” 

SELECT NEXT_DAY(TO_DATE('21-Jul-1979', 'dd-mon-yyyy'), 'Friday') AS "First Friday"
FROM dual;



# Name a date function that will return a number. 

SELECT MONTHS_BETWEEN(TO_DATE(SYSDATE), TO_DATE('11-mar-2019', 'dd-mon-yyyy'))
FROM dual;



# Name a date function that will return a date. 

SELECT ADD_MONTHS(TO_DATE('11-mar-2019', 'dd-mon-yyyy'), 12) AS "Return a date"
FROM dual;



# Using DUAL, write a statement that will convert 86.678 to 86.68.

SELECT ROUND(86.678, 2)
FROM dual;



# Write a statement that will display the DJs on Demand CD titles for cd_numbers 90 and 91 in uppercase in a column headed “DJs on Demand Collections.” 

SELECT title, cd_number AS "DJs on Demand Collections"
FROM d_cds
WHERE cd_number = 90 or cd_number = 91;



# Write a statement that will create computer usernames for the DJs on Demand partners. 
# The usernames will be the lowercase letters of the last name + the uppercase first letter in the first name. Title the column “User Passwords.” For example, Mary Smythers would be smythersM. 

SELECT LOWER(last_name) || SUBSTR(UPPER(first_name), 1, 1) AS "User Passwords"
FROM d_partners;



# Write a statement that will convert “It’s a small world” to “HELLO WORLD.” 

SELECT UPPER(REPLACE('It''s a small world', 'It''s a small', 'HELLO')) AS "Replace"
FROM dual;



# Write a statement that will remove the “fiddle” from “fiddledeedee” and the “dum” from “fiddledeedum.” Display the result “fiddledeedeedee” in a column with the heading “Nonsense.” 

SELECT SUBSTR('fiddledeedum', 1, 9)|| SUBSTR('fiddledeedee', 7, 6) AS "Nonsense"
FROM dual;



# Replace every “i” in Mississippi with “$.” 

SELECT REPLACE('Mississippi', 'i', '$')
FROM dual;



# Using DUAL, convert 5332.342 to 5300.

SELECT ROUND(5332.342, -2)
FROM dual;



# Using DUAL, convert 3.14159 to 3.14.
SELECT ROUND(3.14159, 2)
FROM dual;



# Using DUAL, convert 73.892 to 73.8. 

SELECT TRUNC(73.892, 1)
FROM dual;



# What is the next Friday six months from now? Label the column “Future.” 

SELECT NEXT_DAY((ADD_MONTHS(SYSDATE, 6)), 'friday') AS "Future"
FROM dual;



# What is the date 10 years from now? Label the column “Future.” 

SELECT ADD_MONTH(SYSDATE, 120) AS "Future"
FROM dual;



# Leap years occur every four years. Remember, 2004 was a leap year. Now create a function that will show the date of the next leap year as 29-Feb-2008. Label the column “Future.” 

SELECT TO_CHAR(ADD_MONTHS(TO_DATE('29-feb-2004', 'dd-mon-yyyy'), 4*12), 'dd-Mon-yyyy')
       AS "Future"
FROM dual;



# Write a statement that will find any of the DJs on Demand CD themes that have an “ie” in their names. 

SELECT description
FROM d_themes
WHERE description LIKE '%ie%';



# Write a statement that will return only the DJs on Demand CDs with years greater than 2000 but less than 2003. Display both the title and year. 

SELECT title, year
FROM d_cds
WHERE year>2000 AND year<2003;



# Write a statement that will return the Oracle database employee’s employee ID and his starting hire dates between January 1, 1997 and today. Display the result ordered from most recently hired to the oldest. 

SELECT employees_id, hire_date
FROM employees
where hire_date > '01/01/1997' AND hire_date < SYSDATE
ORDER BY hire_date DESC;
