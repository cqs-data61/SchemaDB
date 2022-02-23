DROP DATABASE IF EXISTS "schema286";
CREATE DATABASE "schema286";
USE "schema286";
CREATE TABLE "titles" (
	"title_id" VARCHAR,
	"title" VARCHAR,
	 PRIMARY KEY ("title_id")
);

CREATE TABLE "employees" (
	"emp_no" INT,
	"emp_title_id" VARCHAR,
	"birth_date" VARCHAR,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"sex" VARCHAR,
	"hire_date" VARCHAR,
	 PRIMARY KEY ("emp_no"),
	 CONSTRAINT "fk_employees_emp_title_id" FOREIGN KEY ("emp_title_id") REFERENCES "titles" ("title_id")
);

CREATE TABLE "salaries" (
	"emp_no" INT,
	"salary" INT,
	 PRIMARY KEY ("emp_no"),
	 CONSTRAINT "fk_salaries_emp_no" FOREIGN KEY ("emp_no") REFERENCES "employees" ("emp_no")
);

CREATE TABLE "departments" (
	"dept_no" VARCHAR,
	"dept_name" VARCHAR,
	 PRIMARY KEY ("dept_no")
);

CREATE TABLE "dept_manager" (
	"dept_no" VARCHAR,
	"emp_no" INT,
	 PRIMARY KEY ("dept_no","emp_no"),
	 CONSTRAINT "fk_dept_manager_emp_no" FOREIGN KEY ("emp_no") REFERENCES "employees" ("emp_no"),
	 CONSTRAINT "fk_dept_manager_dept_no" FOREIGN KEY ("dept_no") REFERENCES "departments" ("dept_no")
);

CREATE TABLE "dept_emp" (
	"emp_no" INT,
	"dept_no" VARCHAR,
	 PRIMARY KEY ("emp_no","dept_no"),
	 CONSTRAINT "fk_dept_emp_dept_no" FOREIGN KEY ("dept_no") REFERENCES "departments" ("dept_no"),
	 CONSTRAINT "fk_dept_emp_emp_no" FOREIGN KEY ("emp_no") REFERENCES "employees" ("emp_no")
);
