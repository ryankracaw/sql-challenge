--Create all tables

CREATE TABLE departments (
    dept_no TEXT PRIMARY KEY,
    dept_name VARCHAR
);

CREATE TABLE titles (
    title_id TEXT PRIMARY KEY,
    title VARCHAR
);

CREATE TABLE employees (
    emp_no INT PRIMARY KEY,
    emp_title TEXT REFERENCES titles (title_id),
    birth_date DATE,
    first_name VARCHAR,
    last_name VARCHAR,
    sex VARCHAR,
    hire_date DATE
);

CREATE TABLE dept_emp (
    emp_no INT REFERENCES employees (emp_no),
    dept_no TEXT REFERENCES departments (dept_no)
);

CREATE TABLE dep_manager (
    dept_no TEXT REFERENCES departments (dept_no),
    emp_no INT REFERENCES employees (emp_no)
);

CREATE TABLE salaries (
    emp_no INT REFERENCES employees (emp_no),
    salary INT
);