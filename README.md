# HR Attrition Analysis Using MySQL  
End‑to‑end SQL‑driven insights into employee turnover patterns, risk factors, and retention opportunities.

---

## Executive Summary  
This project analyzes a synthetic but realistic HR dataset of 10,000 employees to understand the drivers of employee attrition. Using MySQL for all data exploration and analysis, the project identifies how compensation, tenure, satisfaction, performance, and workload influence the likelihood of employees leaving. The goal is to provide actionable insights that HR teams can use to improve retention and workforce planning.

---

## Business Problem  
Employee attrition is costly. Organizations lose productivity, institutional knowledge, and money when employees leave. HR leaders need to understand:

- Which groups are most at risk.
- What factors contribute to turnover.
- How compensation, satisfaction, and workload influence retention.
- Which departments require targeted interventions.
---

## Dataset Overview  
The dataset contains 10,000 employee records with 15+ HR‑related features. Key characteristics:

- **Target variable:** Attrition (Yes/No).
- **Departments:** Engineering, Sales, IT, HR, Finance, Marketing, Operations.
- **Salary range:** ~$3,000–$25,000.
- **Age range:** 22–60.
- **Behavioral patterns built into the data:**  
  - Younger employees tend to have lower tenure.
  - Senior employees earn higher wages.
  - Overtime and low satisfaction increase attrition.
  - High performers and long‑tenure employees are less likely to leave.
  - Department, role, and pay are logically linked.
---

## Project Objectives  
- Measure overall attrition and departmental turnover.
- Analyze demographic, behavioral, and performance factors.
- Quantify the impact of salary, tenure, satisfaction, and overtime.
- Identify high‑risk employee segments.
- Produce SQL scripts that can feed dashboards or ML models.
- Present insights in a business‑ready format.
---

## Data Model and Schema  
The dataset is stored in a single table:

```
employee_attrition_copy (
    EmployeeID TEXT,
    Age INT,
    Department TEXT,
    JobLevel INT,
    YearsAtCompany INT,
    MonthlyIncome INT,
    JobSatisfaction INT,
    WorkLifeBalance INT,
    OverTime TEXT,
    DistanceFromHome DOUBLE,
    PromotionLast5Years TEXT,
    PerformanceRating INT,
    TrainingHoursLastYear INT,
    Attrition TEXT
)
```
## SQL Workflow  

### Data Loading  
- Import CSV into MySQL.
- Validate data types.
- Check for missing or inconsistent values.
- Standardize categorical fields (Yes/No, department names, etc.)

### Exploratory Data Analysis  
Key analyses performed using SQL:

- Overall attrition rate.
- Attrition by department and job role.
- Salary distribution and income bands.
- Tenure patterns and early‑career turnover.
- Overtime and workload effects.
- Satisfaction and work‑life balance patterns.
- Performance rating and retention.
- Age distribution and generational trends.

### Analytical Questions  
Each question is answered with SQL scripts included in the project:

- What is the overall attrition rate?
- Which departments experience the highest turnover?
- Are lower‑paid employees more likely to leave?
- How do job satisfaction and work‑life balance relate to attrition?
- Do younger employees leave more often?
- Are high performers more likely to stay?
- Which combinations of factors create the highest attrition risk?
---

- Insights and Findings:

### Compensation  
Lower‑paid employees show significantly higher attrition. Attrition decreases steadily as income increases, suggesting compensation is a major retention lever.

### Tenure  
Employees with fewer than two years at the company have the highest turnover. Retention improves sharply after the early‑career period.

### Workload  
Employees working overtime leave at much higher rates. Workload management is a critical factor in preventing burnout‑driven attrition.

### Satisfaction and Work‑Life Balance  
Low job satisfaction combined with poor work‑life balance produces the highest attrition rates. Improving these areas can have an immediate impact.

### Performance  
High performers are less likely to leave, while low performers show elevated attrition. This aligns with typical organizational behavior patterns.

### Departmental Risk  
Certain departments show structurally higher turnover, often linked to lower pay bands or heavier workloads. These areas require targeted HR interventions.
---

Business Recommendations:
- Review compensation for early‑career and lower‑income roles.
- Reduce overtime dependency in high‑workload departments.
- Improve onboarding and support for employees with <2 years tenure.
- Strengthen work‑life balance policies.
- Monitor satisfaction scores and intervene early.
- Provide targeted retention programs for high‑risk departments.
