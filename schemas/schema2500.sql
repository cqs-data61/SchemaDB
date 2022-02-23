DROP DATABASE IF EXISTS "schema2500";
CREATE DATABASE "schema2500";
USE "schema2500";
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
	"emp_no" INTEGER,
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
	"emp_no" INTEGER,
	"salary" INTEGER,
	 CONSTRAINT "fk_salaries_emp_no" FOREIGN KEY ("emp_no") REFERENCES "employees" ("emp_no")
);

CREATE TABLE "department_manager" (
	"dept_no" VARCHAR,
	"emp_no" INTEGER,
	 CONSTRAINT "fk_department_manager_dept_no" FOREIGN KEY ("dept_no") REFERENCES "departments" ("dept_no"),
	 CONSTRAINT "fk_department_manager_emp_no" FOREIGN KEY ("emp_no") REFERENCES "employees" ("emp_no")
);

CREATE TABLE "department_emp" (
	"emp_no" INTEGER,
	"dept_no" VARCHAR,
	 CONSTRAINT "fk_department_emp_emp_no" FOREIGN KEY ("emp_no") REFERENCES "employees" ("emp_no"),
	 CONSTRAINT "fk_department_emp_dept_no" FOREIGN KEY ("dept_no") REFERENCES "departments" ("dept_no")
);
