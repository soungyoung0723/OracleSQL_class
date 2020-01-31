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
