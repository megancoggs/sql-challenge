DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS titles;

CREATE TABLE departments (
  dept_no VARCHAR(10) PRIMARY KEY,
  dept_name VARCHAR(30)
);

CREATE TABLE employees (
    emp_no VARCHAR(10) PRIMARY KEY,
    emp_title_id VARCHAR(10),
    birth_date VARCHAR(20),
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    sex VARCHAR(1),
    hire_date VARCHAR(20)
);

CREATE TABLE dept_emp (
    emp_no VARCHAR(10),
    dept_no VARCHAR(10),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
    PRIMARY KEY (emp_no, dept_no)
);


CREATE TABLE dept_manager (
    dept_no VARCHAR(10),
    emp_no VARCHAR(10),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    PRIMARY KEY (dept_no, emp_no)
);

CREATE TABLE salaries (
    emp_no VARCHAR(10),
    salary INT,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    PRIMARY KEY (emp_no, salary)
);

CREATE TABLE titles (
    title_id VARCHAR(10) PRIMARY KEY,
    title VARCHAR(30)
);