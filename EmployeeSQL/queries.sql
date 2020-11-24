-- List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT  e.emp_no, e.first_name, e.last_name, e.sex, s.salary
FROM    employees e
        JOIN salaries s ON e.emp_no = s.emp_no;

-- List first name, last name, and hire date for employees who were hired in 1986.
SELECT  first_name, last_name, hire_date
FROM    employees
WHERE   hire_date BETWEEN '1986-01-01' AND '1986-12-31';

-- List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
SELECT  dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
FROM    dept_manager dm
        JOIN employees e ON dm.emp_no = e.emp_no
        JOIN departments d ON dm.dept_no = d.dept_no

-- List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT  e.emp_no, e.last_name, e.first_name, d.dept_name
FROM    dept_emp de
        JOIN employees e ON e.emp_no = de.emp_no
        JOIN departments d ON d.dept_no = de.dept_no

-- List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT  first_name, last_name, sex
FROM    employees
WHERE   first_name = 'Hercules' AND last_name LIKE 'B%'

-- List all employees in the Sales department, including their employee number, last name, first name, and department name.
WITH dept_cte AS (
    SELECT  dept_no, dept_name
    FROM    departments
    WHERE   dept_name = 'Sales'
)
, emp_cte AS (
    SELECT  de.emp_no, dc.dept_name
    FROM    dept_emp de
    JOIN    dept_cte dc ON de.dept_no = dc.dept_no
)
SELECT  e.emp_no, e.last_name, e.first_name, ec.dept_name
FROM    employees e
        JOIN emp_cte ec ON e.emp_no = ec.emp_no;

-- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

WITH dept_cte AS (
    SELECT  dept_no, dept_name
    FROM    departments
    WHERE   dept_name = 'Sales' OR dept_name = 'Development'
)
, emp_cte AS (
    SELECT  de.emp_no, dc.dept_name
    FROM    dept_emp de
    JOIN    dept_cte dc ON de.dept_no = dc.dept_no
)
SELECT  e.emp_no, e.last_name, e.first_name, ec.dept_name
FROM    employees e
        JOIN emp_cte ec ON e.emp_no = ec.emp_no;


-- In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

