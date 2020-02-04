# 5-2 NULL Function

#	Create a report that shows the Global Fast Foods promotional name, start date, and end date from the f_promotional_menus table. 
# If there is an end date, temporarily replace it with “end in two weeks.” If there is no end date, replace it with today’s date. 

SELECT name, start_date, NVL2(end_date, 'end in two weeks', TO_CHAR(SYSDATE, 'dd-mm-YYYY')) AS "End date";
FROM f_promotion_menus;
                                                                    
# Not all Global Fast Foods staff members receive overtime pay. Instead of displaying a null value for these employees, 
# replace null with zero. 
# Include the employee’s last name and overtime rate in the output. Label the overtime rate as “Overtime Status”.  
           
SELECT last_name, NVL(overtime_rate, 0) AS "Overtime Status"
FROM f_staffs;

# The manager of Global Fast Foods has decided to give all staff who currently do not earn overtime an overtime rate of $5.00. 
# Construct a query that displays the last names and the overtime rate for each staff member, 
# substituting $5.00 for each null overtime value.      
                                                                    
SELECT last_name, NVL(overtime_rate, 5) AS "Overtime Status"
FROM f_staffs;
                                                                    
# Not all Global Fast Foods staff members have a manager.
# Create a query that displays the employee last name and 9999 in the manager ID column for these employees. 

SELECT last_name, NVL(manager_id, 9999) AS "Overtime Status"
FROM f_staffs;
                                                                    
# What does this query on the Global Fast Foods table return                                                                    
                                                                    
SELECT COALESCE(last_name, to_char(manager_id)) as NAME  
FROM f_staffs; 
                                                                   
                                                                    
