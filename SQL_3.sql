# SQL-Lab
# 3-1
# 

# Display the last names of all Global Fast Foods employees who have “e” and “i” in their last names.

SELECT last_name aS "Last Name"
FROM employees
WHERE last_name LIKE '%e%' AND last_name LIKE '%i%'



# I need to know who the Global Fast Foods employees are that make more than $6.50/hour and their position is not order taker. 

SELECT first_name ||' ' || last_name AS name
FROM f_staffs
WHERE salary > 6.50 AND staff_type NOT IN 'Order Taker';



# Using the employees table, write a query to display all employees whose last names start with “D” and have “a” and “e” anywhere in their last name. 

SELECT first_name || ' ' || last_name AS name
FROM employees
WHERE last_name LIKE 'D%a%' AND last_name LIKR 'D%e%';



# In which venues did DJs on Demand have events that were not in private homes?

SELECT *
FROM d_venues
WHERE loc_type NOT IN "Private Home';



# Who am I? 
I was hired by Oracle after May 1998 but before June of 1999. My salary is less than $8000 per month, and I have an “en” in my last name.  

SELECT first_name || ' ' || last_name AS name
FROM employees
WHERE hire_date > TO_Date ('31-May-1998', 'dd-mon-yyyy') ANS hire_date < TO_DATE('01-June-1999', 'dd-mon-yyyy')
      AND salary < 8000 AND last_name LIKE '%en%' ;


# What's my email address? 
Because I have been working for Oracle since the beginning of 1996, I make more than $9000 per month. Because I make so much money, I don't get a commission. 

SELECT LOWER(email) || '@my.stlcc.com' AS "Email address"
FROM employees
WHERE hire_date >= TO_DATE('01-Jan-1996', 'dd-mon-yyyy') AND salary > 9000 AND commission_pct IS NULL;

           
