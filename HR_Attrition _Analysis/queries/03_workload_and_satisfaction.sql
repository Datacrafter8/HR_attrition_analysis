-- Workload & satisfaction:
-- Is overtime associated with higher attrition?

SELECT 
    overtime,
    COUNT(*) AS total_employees,
    SUM(attrition = 'Yes') AS attrition_count,
    ROUND(SUM(attrition = 'Yes') * 100.0 / COUNT(*), 2) AS attrition_rate_pct
FROM employee_attrition_copy
GROUP BY overtime;

-- How do job satisfaction and work-life balance relate to attrition?
SELECT 
    JobSatisfaction,
    COUNT(*) AS total_employees,
    SUM(attrition = 'Yes') AS attrition_count,
    ROUND(SUM(attrition = 'Yes') * 100.0 / COUNT(*), 2) AS attrition_rate_pct
FROM employee_attrition_copy
GROUP BY JobSatisfaction
ORDER BY JobSatisfaction;