DROP TABLE IF EXISTS titles;
DROP TABLE IF EXISTS titles;
DROP TABLE IF EXISTS titles;
DROP TABLE IF EXISTS titles;
DROP TABLE IF EXISTS titles;
DROP TABLE IF EXISTS titles;

-- Create titles table
CREATE TABLE titles (
    title_id VARCHAR(20) NOT NULL,
    title VARCHAR(50) NOT NULL,
    PRIMARY KEY (title_id)
);

-- Create employees table
CREATE TABLE employees (
    emp_no INT NOT NULL,
    emp_title_id INT NOT NULL,
    birth_date DATE,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    sex VARCHAR(5),
    hire_date DATE NOT NULL,
    PRIMARY KEY (emp_no),
    FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

-- Create salaries table
CREATE TABLE salaries (
    emp_no INT NOT NULL,
    salary INT NOT NULL,
    PRIMARY KEY (emp_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

-- Create departments table
CREATE TABLE deptartments (
    dept_no VARCHAR(10) NOT NULL,
    dept_name VARCHAR(50) NOT NULL,
    PRIMARY KEY (dept_no)
);

-- Create department manager table
CREATE TABLE dept_manager (
    dept_no INT NOT NULL,
    emp_no INT NOT NULL,
    PRIMARY KEY (dept_no,emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments.dept_no,
    FOREIGN KEY (emp_no) REFERENCES employees.emp_no
);

-- Create department employee table
CREATE TABLE dept_emp (
    emp_no INT NOT NULL,
    dept_no INT NOT NULL,
    PRIMARY KEY (emp_no,dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees.emp_no,
    FOREIGN KEY (dept_no) REFERENCES departments.dept_no
);