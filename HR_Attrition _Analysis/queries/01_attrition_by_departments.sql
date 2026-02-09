-- Overall patterns:
-- What is the overall attrition rate?
SELECT 
    COUNT(*) AS total_employees,
    SUM(attrition = 'Yes') AS attrition_count,
    ROUND(SUM(attrition = 'Yes') * 100.0 / COUNT(*), 2) AS attrition_rate_pct
FROM employee_attrition_copy;

-- How does attrition vary by department and job role?
SELECT 
    department,
    COUNT(*) AS total_employees,
    SUM(attrition = 'Yes') AS attrition_count,
    ROUND(SUM(attrition = 'Yes') * 100.0 / COUNT(*), 2) AS attrition_rate_pct
FROM employee_attrition_copy
GROUP BY department
ORDER BY attrition_rate_pct DESC;
