DROP DATABASE IF EXISTS "schema843";
CREATE DATABASE "schema843";
USE "schema843";
CREATE TABLE "departments" (
	"dept_no" VARCHAR,
	"dept_name" VARCHAR,
	 PRIMARY KEY ("dept_no")
);

CREATE TABLE "titles" (
	"title_id" VARCHAR,
	"title" VARCHAR,
	 PRIMARY KEY ("title_id")
);

CREATE TABLE "employees" (
	"emp_no" INT,
	"emp_title_id" VARCHAR,
	"birth_date" DATE,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"sex" VARCHAR,
	"hire_date" DATE,
	 PRIMARY KEY ("emp_no"),
	 CONSTRAINT "fkeycon_employees_to_titles" FOREIGN KEY ("emp_title_id") REFERENCES "titles" ("title_id")
);

CREATE TABLE "salaries" (
	"emp_no" INT,
	"salary" INT,
	 PRIMARY KEY ("emp_no"),
	 CONSTRAINT "fkeycon_salaries_to_employees" FOREIGN KEY ("emp_no") REFERENCES "employees" ("emp_no")
);

CREATE TABLE "dept_emp" (
	"emp_no" INT,
	"dept_no" VARCHAR,
	 PRIMARY KEY ("emp_no","dept_no"),
	 CONSTRAINT "fkeycon_dept_emp_to_employees" FOREIGN KEY ("emp_no") REFERENCES "employees" ("emp_no"),
	 CONSTRAINT "fkeycon_dept_emp_to_departments" FOREIGN KEY ("dept_no") REFERENCES "departments" ("dept_no")
);

CREATE TABLE "dept_manager" (
	"dept_no" VARCHAR,
	"emp_no" INT,
	 PRIMARY KEY ("dept_no","emp_no"),
	 CONSTRAINT "fkeycon_dept_manager_to_employees" FOREIGN KEY ("emp_no") REFERENCES "employees" ("emp_no"),
	 CONSTRAINT "fkeycon_dept_manager_to_departments" FOREIGN KEY ("dept_no") REFERENCES "departments" ("dept_no")
);
