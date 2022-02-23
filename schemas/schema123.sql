DROP DATABASE IF EXISTS "schema123";
CREATE DATABASE "schema123";
USE "schema123";
CREATE TABLE "department" (
	"dept_id" INT,
	"name" VARCHAR,
	 PRIMARY KEY ("dept_id")
);

CREATE TABLE "role" (
	"role_id" INT,
	"title" VARCHAR,
	"salary" DECIMAL,
	"dept_id" INT,
	 PRIMARY KEY ("role_id"),
	 CONSTRAINT "fkeycon_role_to_department" FOREIGN KEY ("dept_id") REFERENCES "department" ("dept_id")
);

CREATE TABLE "employee" (
	"emp_id" INT,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"role_id" INT,
	"manager_id" INT,
	 PRIMARY KEY ("emp_id"),
	 CONSTRAINT "fkeycon_employee_to_employee" FOREIGN KEY ("manager_id") REFERENCES "employee" ("emp_id"),
	 CONSTRAINT "fkeycon_employee_to_role" FOREIGN KEY ("role_id") REFERENCES "role" ("role_id")
);
