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
    id SERIAL,
    email VARCHAR(30) NOT NULL,
    customer_id INTEGER NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (customer_id) REFERENCES customer(id)
);

-- Create departments table
CREATE TABLE deptartments (
    id SERIAL,
    email VARCHAR(30) NOT NULL,
    customer_id INTEGER NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (customer_id) REFERENCES customer(id)
);

-- Create department manager table
CREATE TABLE dept_manager (
    id SERIAL,
    email VARCHAR(30) NOT NULL,
    customer_id INTEGER NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (customer_id) REFERENCES customer(id)
);

-- Create department employee table
CREATE TABLE dept_emp (
    id SERIAL,
    email VARCHAR(30) NOT NULL,
    customer_id INTEGER NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (customer_id) REFERENCES customer(id)
);