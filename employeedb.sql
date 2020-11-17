CREATE TABLE Departments (
    dept_no VARCHAR   NOT NULL,
    dept_name VARCHAR   NOT NULL,
    CONSTRAINT pk_Departments PRIMARY KEY (
        dept_no
     )
);

CREATE TABLE Employees (
    emp_no INTEGER   NOT NULL,
    birth_date DATE   NOT NULL,
    first_name VARCHAR   NOT NULL,
    last_name VARCHAR   NOT NULL,
    gender CHAR   NOT NULL,
    hire_date DATE   NOT NULL,
    CONSTRAINT pk_Employees PRIMARY KEY (
        emp_no
     )
);

CREATE TABLE Titles (
    emp_no INTEGER   NOT NULL,
    title VARCHAR   NOT NULL,
    from_date DATE   NOT NULL,
    to_date DATE   NOT NULL,
    CONSTRAINT pk_Titles PRIMARY KEY (
        emp_no,from_date
     )
);

CREATE TABLE Dept_Emp (
    emp_no INTEGER   NOT NULL,
    dept_no VARCHAR   NOT NULL,
    from_date DATE   NOT NULL,
    to_date DATE   NOT NULL,
    CONSTRAINT pk_Dept_Emp PRIMARY KEY (
        emp_no,dept_no
     )
);

CREATE TABLE Dept_Manager (
    dept_no VARCHAR   NOT NULL,
    emp_no INTEGER   NOT NULL,
    from_date DATE   NOT NULL,
    to_date DATE   NOT NULL,
    CONSTRAINT pk_Dept_Manager PRIMARY KEY (
        dept_no,emp_no
     )
);

CREATE TABLE Salaries (
    emp_no INTEGER   NOT NULL,
    Salary FLOAT   NOT NULL,
    from_date DATE   NOT NULL,
    to_date DATE   NOT NULL,
    CONSTRAINT pk_Salaries PRIMARY KEY (
        emp_no,Salary
     )
);

ALTER TABLE Titles ADD CONSTRAINT fk_Titles_emp_no FOREIGN KEY(emp_no)
REFERENCES Employees (emp_no);

ALTER TABLE Dept_Emp ADD CONSTRAINT fk_Dept_Emp_emp_no FOREIGN KEY(emp_no)
REFERENCES Employees (emp_no);

ALTER TABLE Dept_Emp ADD CONSTRAINT fk_Dept_Emp_dept_no FOREIGN KEY(dept_no)
REFERENCES Departments (dept_no);

ALTER TABLE Dept_Manager ADD CONSTRAINT fk_Dept_Manager_dept_no FOREIGN KEY(dept_no)
REFERENCES Departments (dept_no);

ALTER TABLE Dept_Manager ADD CONSTRAINT fk_Dept_Manager_emp_no FOREIGN KEY(emp_no)
REFERENCES Employees (emp_no);

ALTER TABLE Salaries ADD CONSTRAINT fk_Salaries_emp_no FOREIGN KEY(emp_no)
REFERENCES Employees (emp_no);

