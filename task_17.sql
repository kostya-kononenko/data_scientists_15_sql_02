# Кількість вакансій
SELECT count(job_id) as number_of_vacancies
FROM ds.employees;


# Середня заробітня плата та кількість працівників відділу 90
SELECT avg(SALARY) AS avg_salary, count(first_name) AS number_of_employees
FROM ds.employees
WHERE DEPARTMENT_ID = 90;


# Кількість працівників з тією самою работою
SELECT job_id, count(first_name)
FROM ds.employees
GROUP BY JOB_ID;


# Імя, призвище, код відділу
SELECT employees.FIRST_NAME, employees.LAST_NAME, employees.DEPARTMENT_ID, departments.DEPARTMENT_NAME
FROM employees
INNER JOIN departments
ON employees.DEPARTMENT_ID = departments.DEPARTMENT_ID


# Імя, призвище, код відділу, роботу, працівників які працюють в Лондоні
SELECT employees.FIRST_NAME, employees.LAST_NAME, employees.DEPARTMENT_ID, employees.JOB_ID
FROM employees
INNER JOIN departments
ON employees.DEPARTMENT_ID = departments.DEPARTMENT_ID
INNER JOIN locations
ON departments.LOCATION_ID = locations.LOCATION_ID
WHERE locations.CITY = 'London';