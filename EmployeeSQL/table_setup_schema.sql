CREATE TABLE "Departments" (
    "id_departments" SERIAL NOT NULL,
    "dept_no" VARCHAR(50) NOT NULL UNIQUE, 
    "dept_name" VARCHAR(50) NOT NULL,
    CONSTRAINT "pk_Departments" PRIMARY KEY ("id_departments"),
    CONSTRAINT "uc_Departments_dept_name" UNIQUE ("dept_name")
);

CREATE TABLE "DeptEmployees" (
    "id_deptemployees" SERIAL NOT NULL,
    "emp_no" INT NOT NULL,
    "dept_no" VARCHAR(50) NOT NULL,
    CONSTRAINT "pk_DeptEmployees" PRIMARY KEY ("id_deptemployees"),
    CONSTRAINT "fk_DeptEmployees_dept_no" FOREIGN KEY ("dept_no")
    REFERENCES "Departments" ("dept_no")  
);

CREATE TABLE "DeptManager" (
    "id_deptmanager" SERIAL NOT NULL,
    "dept_no" VARCHAR(50) NOT NULL,
    "emp_no" INT NOT NULL,
    CONSTRAINT "pk_DeptManager" PRIMARY KEY ("id_deptmanager"),
    CONSTRAINT "fk_DeptManager_dept_no" FOREIGN KEY ("dept_no")
    REFERENCES "Departments" ("dept_no"),
    CONSTRAINT "uc_DeptManager_emp_no" UNIQUE ("emp_no")  
);

CREATE TABLE "Employees" (
    "id_employees" SERIAL NOT NULL,
    "emp_no" INT NOT NULL UNIQUE,  
    "emp_title_id" VARCHAR(50) NOT NULL,
    "birth_date" DATE NOT NULL,
    "first_name" VARCHAR(50) NOT NULL,
    "last_name" VARCHAR(50) NOT NULL,
    "sex" VARCHAR(50) NOT NULL,
    "hire_date" DATE NOT NULL,
    CONSTRAINT "pk_Employees" PRIMARY KEY ("id_employees")
);

CREATE TABLE "Salaries" (
    "id_salaries" SERIAL NOT NULL,
    "emp_no" INT NOT NULL UNIQUE,  
    "salary" INT NOT NULL,
    CONSTRAINT "pk_Salaries" PRIMARY KEY ("id_salaries"),
    CONSTRAINT "fk_Salaries_emp_no" FOREIGN KEY ("emp_no")
    REFERENCES "Employees" ("emp_no")
);

CREATE TABLE "Titles" (
    "id_titles" SERIAL NOT NULL,
    "emp_title_id" VARCHAR(50) NOT NULL UNIQUE,  
    "title" VARCHAR(50) NOT NULL,
    CONSTRAINT "pk_Titles" PRIMARY KEY ("id_titles"),
    CONSTRAINT "uc_Titles_title" UNIQUE ("title")
);

-- Foreign Key Constraints
ALTER TABLE "DeptEmployees" ADD CONSTRAINT "fk_DeptEmployees_emp_no" FOREIGN KEY("emp_no")
REFERENCES "Employees" ("emp_no");
