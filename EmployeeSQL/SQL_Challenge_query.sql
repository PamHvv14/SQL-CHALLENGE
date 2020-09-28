SELECT employees.emp_no, employees.first_name, employees.last_name, employees.sex, salaries.salary
FROM employees
LEFT JOIN salaries ON employees.emp_no=salaries.emp_no;

SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date between '19860101' and '19861231';

SELECT dept_manager.emp_no, employees.first_name, employees.last_name, dept_manager.dept_no, departments.dept_name
FROM dept_manager
LEFT JOIN employees ON dept_manager.emp_no=employees.emp_no
LEFT JOIN departments ON dept_manager.dept_no=departments.dept_no;

SELECT employees.emp_no, employees.first_name, employees.last_name, dept_emp.dept_no, departments.dept_name
FROM employees
LEFT JOIN dept_emp ON employees.emp_no=dept_emp.emp_no
LEFT JOIN departments ON dept_emp.dept_no=departments.dept_no;

SELECT first_name, last_name, sex
FROM employees
WHERE first_name='Hercules' AND last_name LIKE 'B%';

SELECT employees.emp_no, employees.first_name, employees.last_name, dept_emp.dept_no, departments.dept_name
FROM employees
LEFT JOIN dept_emp ON employees.emp_no=dept_emp.emp_no
LEFT JOIN departments ON dept_emp.dept_no=departments.dept_no
WHERE dept_name='Sales';

SELECT employees.emp_no, employees.first_name, employees.last_name, departments.dept_name
FROM employees
LEFT JOIN dept_emp ON employees.emp_no=dept_emp.emp_no
LEFT JOIN departments ON dept_emp.dept_no=departments.dept_no
WHERE dept_name='Sales' OR dept_name='Development'

SELECT last_name, count(emp_no)
FROM employees
GROUP BY last_name
ORDER BY last_name DESC;
