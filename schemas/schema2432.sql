DROP DATABASE IF EXISTS "schema2432";
CREATE DATABASE "schema2432";
USE "schema2432";
CREATE TABLE "employee" (
	"emp_no" INT,
	"birth_date" DATE,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"gender" VARCHAR,
	"hire_date" DATE,
	 PRIMARY KEY ("emp_no")
);

CREATE TABLE "title" (
	"emp_no" INT,
	"title" VARCHAR,
	"from_date" DATE,
	"to_date" DATE,
	"record_id" SERIAL,
	 PRIMARY KEY ("record_id"),
	 CONSTRAINT "fkeycon_title_to_employee" FOREIGN KEY ("emp_no") REFERENCES "employee" ("emp_no")
);

CREATE TABLE "salary" (
	"emp_no" INT,
	"salary" INT,
	"from_date" DATE,
	"to_date" DATE,
	"record_id" SERIAL,
	 PRIMARY KEY ("record_id"),
	 CONSTRAINT "fkeycon_salary_to_employee" FOREIGN KEY ("emp_no") REFERENCES "employee" ("emp_no")
);

CREATE TABLE "department" (
	"dept_no" VARCHAR,
	"dept_name" VARCHAR,
	 PRIMARY KEY ("dept_no")
);

CREATE TABLE "dept_manager" (
	"dept_no" VARCHAR,
	"emp_no" INT,
	"from_date" DATE,
	"to_date" DATE,
	"record_id" SERIAL,
	 PRIMARY KEY ("record_id"),
	 CONSTRAINT "fkeycon_dept_manager_to_employee" FOREIGN KEY ("emp_no") REFERENCES "employee" ("emp_no"),
	 CONSTRAINT "fkeycon_dept_manager_to_department" FOREIGN KEY ("dept_no") REFERENCES "department" ("dept_no")
);

CREATE TABLE "dept_emp" (
	"emp_no" INT,
	"dept_no" VARCHAR,
	"from_date" DATE,
	"to_date" DATE,
	 PRIMARY KEY ("emp_no","dept_no"),
	 CONSTRAINT "fkeycon_dept_emp_to_department" FOREIGN KEY ("dept_no") REFERENCES "department" ("dept_no"),
	 CONSTRAINT "fkeycon_dept_emp_to_employee" FOREIGN KEY ("emp_no") REFERENCES "employee" ("emp_no")
);
