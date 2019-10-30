-- Q1
SELECT Employees.emp_no, Employees.last_name, Employees.first_name, Employees.gender, Salaries.salary
FROM Employees
INNER JOIN Salaries ON
Salaries.emp_no = Employees.emp_no;


-- Q2
SELECT emp_no, last_name, first_name, hire_date
FROM Employees
WHERE hire_date LIKE '1986%';

-- Q3
SELECT Department.dept_no, Department.dept_name, Department_Manager.emp_no, Department_Manager.from_date, Department_Manager.to_date,Employees.first_name,Employees.last_name 
FROM Department
INNER JOIN Department_Manager ON
Department_Manager.dept_no = Department.dept_no
INNER JOIN Employees ON 
Employees.emp_no = Department_Manager.emp_no; 

-- Q4
DROP VIEW IF EXISTS v1;
CREATE VIEW v1 AS
SELECT Employees.emp_no,
	Employees.last_name,
	Employees.first_name, 
	Department.dept_name
FROM Employees
INNER JOIN Department_Employee ON
Department_Employee.emp_no = Employees.emp_no
INNER JOIN Department ON 
Department_Employee.dept_no = Department.dept_no;
SELECT * FROM v1;

-- Q5
SELECT first_name, last_name
FROM Employees
WHERE 
first_name = 'Hercules' AND last_name LIKE 'B%';

-- Q6
SELECT * 
FROM v1
WHERE 
dept_name = 'Sales';

-- Q7
SELECT *
FROM v1
WHERE 
dept_name = 'Sales' 
OR 
dept_name = 'Development';

-- Q8
SELECT last_name, COUNT(last_name) as "name count"
FROM Employees
GROUP BY last_name
ORDER BY "name count" DESC;

--Epilogue
SELECT *
FROM Employees
WHERE emp_no = '499942'
