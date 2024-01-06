-- Create Database
create database hr;

-- Use Database
use hr;


select * from HRDATA1;

-- 1. Retrieve the total number of employees in the dataset--
select count(*) from HRDATA1;


-- 2. List all unique job roles in the dataset-- 
select distinct(JobRole) from HRDATA1;


-- 3. Find the average age of employees.-- 
select avg(age) from HRDATA1;

-- 4. Retrieve the names and ages of employees who have worked at the company for more than 5 years.-- 
select Employe,age,YearsAtCompany from HRDATA1 where YearsAtCompany >5;

-- 5. Get a count of employees grouped by their department-- 
select count(Employe) as No_Of_Employee, Department from HRDATA1
group by  Department;

-- 6. List employees who have 'High' Job Satisfaction, 5 = high -- 
select Employe from HRDATA1 where Joblevel=5;


-- 7. Find the highest Monthly Income in the dataset.-- 
select max(MonthlyIncome) from HRDATA1;


-- 8. List employees who have 'Travel_Rarely' as their BusinessTravel type.--
select Employe from HRDATA1 where BusinessTravel = 'Travel_Rarely';



-- 9. Retrieve the distinct MaritalStatus categories in the dataset.-- 
SELECT  MaritalStatus, COUNT(Employe) AS count
From hrdata1
GROUP BY MaritalStatus;


-- 10. Get a list of employees with more than 2 years of work experience but less than 4 years in their current role.-- 
select Employe,TotalWorkingYears from HRDATA1 where TotalWorkingYears>2 and TotalWorkingYears<4;


-- 12. Find the average distance from home for employees in each department.-- 
select Department,avg(DistanceFromHome) as Average_Distance from HRDATA1
group by Department;


-- 13. Retrieve the top 5 employees with the highest MonthlyIncome.-- 
SELECT Employe, MonthlyIncome
FROM hrdata1
ORDER BY MonthlyIncome DESC
LIMIT 5;


-- THANK YOU