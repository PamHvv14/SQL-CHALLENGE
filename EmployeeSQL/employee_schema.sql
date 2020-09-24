CREATE TABLE DEPARTMENTS (dept_no varchar(5) NOT NULL,
    dept_name varchar(30) NOT NULL,
    CONSTRAINT PK_departments PRIMARY KEY (dept_no));

CREATE TABLE DEPT_EMP (emp_no int NOT NULL,
    dept_no varchar(5) NOT NULL);

CREATE TABLE DEPT_MANAGER (dept_no varchar(5) NOT NULL,
    emp_no int NOT NULL);

CREATE TABLE EMPLOYEES (emp_no int NOT NULL,
    emp_title_id varchar(10) NOT NULL,
    birth_date date NOT NULL,
    first_name varchar(30) NOT NULL,
    last_name varchar(30) NOT NULL,
    sex varchar(1) NOT NULL,
    hire_date date NOT NULL,
    CONSTRAINT PK_employees PRIMARY KEY (emp_no));

CREATE TABLE SALARIES (emp_no int NOT NULL,
    salary int NOT NULL);

CREATE TABLE TITLES (title_id varchar(10) NOT NULL,
    title varchar(30) NOT NULL,
	CONSTRAINT PK_titles PRIMARY KEY (title_id));

ALTER TABLE DEPT_EMP ADD CONSTRAINT fk_dept_emp_emp_no FOREIGN KEY(emp_no)
REFERENCES EMPLOYEES (emp_no);

ALTER TABLE DEPT_EMP ADD CONSTRAINT fk_dept_emp_dept_no FOREIGN KEY(dept_no)
REFERENCES DEPARTMENTS (dept_no);

ALTER TABLE DEPT_MANAGER ADD CONSTRAINT fk_dept_manager_emp_no FOREIGN KEY(emp_no)
REFERENCES EMPLOYEES (emp_no);

ALTER TABLE DEPT_MANAGER ADD CONSTRAINT fk_dept_manager_dept_no FOREIGN KEY(dept_no)
REFERENCES DEPARTMENTS (dept_no);

ALTER TABLE SALARIES ADD CONSTRAINT fk_salaries_emp_no FOREIGN KEY(emp_no)
REFERENCES EMPLOYEES (emp_no);

ALTER TABLE EMPLOYEES ADD CONSTRAINT fk_titles_emp_no FOREIGN KEY(emp_title_id)
REFERENCES TITLES (title_id);