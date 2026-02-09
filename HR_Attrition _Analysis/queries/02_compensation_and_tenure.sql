-- Compensation & tenure:
-- Are lower-paid employees more likely to leave?
SELECT 
    CASE 
        WHEN MonthlyIncome < 5000 THEN '< 5k'
        WHEN MonthlyIncome BETWEEN 5000 AND 9999 THEN '5k–9.9k'
        WHEN MonthlyIncome BETWEEN 10000 AND 14999 THEN '10k–14.9k'
        WHEN MonthlyIncome BETWEEN 15000 AND 19999 THEN '15k–19.9k'
        ELSE '20k+'
    END AS income_band,
    COUNT(*) AS total_employees,
    SUM(attrition = 'Yes') AS attrition_count,
    ROUND(SUM(attrition = 'Yes') * 100.0 / COUNT(*), 2) AS attrition_rate_pct
FROM employee_attrition_copy
GROUP BY income_band
ORDER BY income_band;