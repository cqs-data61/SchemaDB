DROP DATABASE IF EXISTS "schema1574";
CREATE DATABASE "schema1574";
USE "schema1574";
CREATE TABLE "employees" (
	"emp_no" INT,
	"birth_date" DATE,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"gender" VARCHAR,
	"hire_date" DATE,
	 PRIMARY KEY ("emp_no")
);

CREATE TABLE "titles" (
	"emp_no" INT,
	"title" VARCHAR,
	"from_date" DATE,
	"to_date" DATE,
	 CONSTRAINT "fk_titles_emp_no" FOREIGN KEY ("emp_no") REFERENCES "employees" ("emp_no")
);

CREATE TABLE "salaries" (
	"emp_no" INT,
	"salary" INT,
	"from_date" DATE,
	"to_date" DATE,
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
	"from_date" DATE,
	"to_date" DATE,
	 CONSTRAINT "fk_dept_manager_emp_no" FOREIGN KEY ("emp_no") REFERENCES "employees" ("emp_no"),
	 CONSTRAINT "fk_dept_manager_dept_no" FOREIGN KEY ("dept_no") REFERENCES "departments" ("dept_no")
);

CREATE TABLE "dept_emp" (
	"emp_no" INT,
	"dept_no" VARCHAR,
	"from_date" DATE,
	"to_date" DATE,
	 CONSTRAINT "fk_dept_emp_dept_no" FOREIGN KEY ("dept_no") REFERENCES "departments" ("dept_no"),
	 CONSTRAINT "fk_dept_emp_emp_no" FOREIGN KEY ("emp_no") REFERENCES "employees" ("emp_no")
);
