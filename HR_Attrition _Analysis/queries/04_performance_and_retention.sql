-- Performance & retention
-- Are high performers less likely to leave?

SELECT 
    PerformanceRating,
    COUNT(*) AS total_employees,
    SUM(attrition = 'Yes') AS attrition_count,
    ROUND(SUM(attrition = 'Yes') * 100.0 / COUNT(*), 2) AS attrition_rate_pct
FROM employee_attrition_copy
GROUP BY PerformanceRating
ORDER BY PerformanceRating;

-- Which combination of factors is most “at risk”?
SELECT 
    department,
    CASE 
        WHEN MonthlyIncome < 5000 THEN '< 5k'
        WHEN MonthlyIncome BETWEEN 5000 AND 9999 THEN '5k–9.9k'
        WHEN MonthlyIncome BETWEEN 10000 AND 14999 THEN '10k–14.9k'
        ELSE '15k+'
    END AS income_band,
    overtime,
    JobSatisfaction,
    COUNT(*) AS total_employees,
    SUM(attrition = 'Yes') AS attrition_count,
    ROUND(SUM(attrition = 'Yes') * 100.0 / COUNT(*), 2) AS attrition_rate_pct
FROM employee_attrition_copy
GROUP BY department, income_band, overtime, JobSatisfaction
HAVING COUNT(*) >= 20
ORDER BY attrition_rate_pct DESC
LIMIT 20;