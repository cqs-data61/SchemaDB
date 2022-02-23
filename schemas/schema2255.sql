DROP DATABASE IF EXISTS "schema2255";
CREATE DATABASE "schema2255";
USE "schema2255";
CREATE TABLE "departments" (
	"dept_no" CHAR,
	"dept_name" VARCHAR,
	 PRIMARY KEY ("dept_no")
);

CREATE TABLE "titles" (
	"title_id" CHAR,
	"title" VARCHAR,
	 PRIMARY KEY ("title_id")
);

CREATE TABLE "employees" (
	"emp_no" INT,
	"emp_title_id" CHAR,
	"birth_date" DATE,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"sex" CHAR,
	"hire_date" DATE,
	 PRIMARY KEY ("emp_no"),
	 CONSTRAINT "fkeycon_employees_to_titles" FOREIGN KEY ("emp_title_id") REFERENCES "titles" ("title_id")
);

CREATE TABLE "dept_manager" (
	"dept_no" CHAR,
	"emp_no" INT,
	 PRIMARY KEY ("emp_no","dept_no"),
	 CONSTRAINT "fkeycon_dept_manager_to_employees" FOREIGN KEY ("emp_no") REFERENCES "employees" ("emp_no"),
	 CONSTRAINT "fkeycon_dept_manager_to_departments" FOREIGN KEY ("dept_no") REFERENCES "departments" ("dept_no")
);

CREATE TABLE "dept_emp" (
	"emp_no" INT,
	"dept_no" CHAR,
	 PRIMARY KEY ("emp_no","dept_no"),
	 CONSTRAINT "fkeycon_dept_emp_to_employees" FOREIGN KEY ("emp_no") REFERENCES "employees" ("emp_no"),
	 CONSTRAINT "fkeycon_dept_emp_to_departments" FOREIGN KEY ("dept_no") REFERENCES "departments" ("dept_no")
);

CREATE TABLE "salaries" (
	"emp_no" INT,
	"salary" INT,
	 PRIMARY KEY ("emp_no"),
	 CONSTRAINT "fkeycon_salaries_to_employees" FOREIGN KEY ("emp_no") REFERENCES "employees" ("emp_no")
);
