--List the following details of each employee: employee number, last name, first name, gender, and salary.
SELECT 
e.emp_no,
e.last_name, 
e.first_name, 
e.gender,
s.salary
FROM employees e, salaries s
WHERE e.emp_no = s.emp_no;

--List employees who were hired in 1986.
SELECT emp_no, last_name, first_name, hire_date 
FROM employees
WHERE extract(year from hire_date) = 1986;

--List the manager of each department with the following information:
-- department number, department name, the manager's employee number, last name, first name, and start and end employment dates.
SELECT d.dept_no, d.dept_name, 
dm.emp_no, e.last_name, e.first_name,
dm.from_date, dm.to_date
FROM departments d, dept_manager dm, employees e
WHERE dm.dept_no = d.dept_no AND e.emp_no = dm.emp_no;

-- List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e, departments d, dept_emp de
WHERE e.emp_no = de.emp_no AND de.dept_no = d.dept_no

-- List all employees whose first name is "Hercules" and last names begin with "B."


-- List all employees in the Sales department, including their employee number, last name, first name, and department name.


-- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.


-- In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
