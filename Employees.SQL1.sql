CREATE TABLE departments (
	dept_no VARCHAR(20) NOT NULL,
	dept_name VARCHAR(30) NOT NULL,
	PRIMARY KEY(dept_no)
);
SELECT * FROM departments

CREATE TABLE employees(
	  emp_no INT NOT NULL,
	  emp_title_id VARCHAR(20) NOT NULL,
	  birth_date DATE NOT NULL,
	  first_name VARCHAR(14) NOT NULL,
	  last_name VARCHAR(16) NOT NULL,
	  gender VARCHAR(10) NOT NULL,
	  hire_date DATE NOT NULL,
  PRIMARY KEY (emp_no),
  FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);
SELECT * FROM employees

CREATE TABLE dept_emp(
	emp_no INT NOT NULL,
	dept_no VARCHAR(20) NOT NULL,
	PRIMARY KEY (emp_no, dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no)
);
SELECT *FROM dept_emp


CREATE TABLE dept_manager(
  dept_no VARCHAR(4) NOT NULL,
  emp_no INT NOT NULL,
  PRIMARY KEY (dept_no, emp_no),
  FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);
SELECT * FROM dept_manager


CREATE TABLE salaries(
  emp_no INT NOT NULL,
  salary INT NOT NULL,
  PRIMARY KEY (emp_no),
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);
SELECT * FROM salaries

CREATE TABLE titles(
  title_id VARCHAR(5) NOT NULL,
  title VARCHAR(20) NOT NULL,
  PRIMARY KEY (title_id)
);

SELECT * FROM titles

SELECT employees.emp_no, employees.last_name, employees.first_name, employees.gender, salaries.salary
FROM employees
JOIN salaries ON employees.emp_no = salaries.emp_no


SELECT first_name, last_name, hire_date 
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31'
ORDER BY hire_date;


SELECT d.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
FROM dept_manager dm
JOIN departments d ON dm.dept_no = d.dept_no
JOIN employees e ON dm.emp_no = e.emp_no;


SELECT e.emp_no, e.last_name, e.first_name, d.dept_name, de.dept_no
FROM employees e
JOIN dept_emp de ON e.emp_no = de.emp_no
JOIN departments d ON de.dept_no = d.dept_no
ORDER BY e.emp_no;

SELECT first_name, last_name, gender
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

SELECT employees.emp_no, employees.last_name, employees.first_name
FROM employees
JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
JOIN departments ON dept_emp.dept_no = departments.dept_no
WHERE departments.dept_name = 'Sales';

SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
INNER JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
INNER JOIN departments ON dept_emp.dept_no = departments.dept_no
WHERE departments.dept_name IN ('Sales', 'Development')
ORDER BY employees.emp_no;

SELECT last_name, COUNT(*) as frequency
FROM employees
GROUP BY last_name
ORDER BY frequency DESC;