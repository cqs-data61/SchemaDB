DROP DATABASE IF EXISTS "schema2277";
CREATE DATABASE "schema2277";
USE "schema2277";
CREATE TABLE "employees" (
	"emp_no" INTEGER,
	"birth_date" VARCHAR,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"gender" VARCHAR,
	"hire_date" VARCHAR,
	 PRIMARY KEY ("emp_no")
);

CREATE TABLE "titles" (
	"id" SERIAL,
	"emp_no" INTEGER,
	"title" VARCHAR,
	"from_date" VARCHAR,
	"to_date" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_titles_to_employees" FOREIGN KEY ("emp_no") REFERENCES "employees" ("emp_no")
);

CREATE TABLE "salaries" (
	"id" SERIAL,
	"emp_no" INTEGER,
	"salary" INTEGER,
	"from_date" VARCHAR,
	"to_date" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_salaries_to_employees" FOREIGN KEY ("emp_no") REFERENCES "employees" ("emp_no")
);

CREATE TABLE "departments" (
	"dept_no" VARCHAR,
	"dept_name" VARCHAR,
	 PRIMARY KEY ("dept_no")
);

CREATE TABLE "dept_manager" (
	"dept_no" VARCHAR,
	"emp_no" INTEGER,
	"from_date" VARCHAR,
	"to_date" VARCHAR,
	 PRIMARY KEY ("dept_no","emp_no"),
	 CONSTRAINT "fkeycon_dept_manager_to_employees" FOREIGN KEY ("emp_no") REFERENCES "employees" ("emp_no"),
	 CONSTRAINT "fkeycon_dept_manager_to_departments" FOREIGN KEY ("dept_no") REFERENCES "departments" ("dept_no")
);

CREATE TABLE "dept_emp" (
	"emp_no" INTEGER,
	"dept_no" VARCHAR,
	"from_date" VARCHAR,
	"to_date" VARCHAR,
	 PRIMARY KEY ("emp_no","dept_no"),
	 CONSTRAINT "fkeycon_dept_emp_to_departments" FOREIGN KEY ("dept_no") REFERENCES "departments" ("dept_no")
);
