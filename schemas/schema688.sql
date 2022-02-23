DROP DATABASE IF EXISTS "schema688";
CREATE DATABASE "schema688";
USE "schema688";
CREATE TABLE "departments" (
	"department_id" INT,
	"department_name" VARCHAR,
	 PRIMARY KEY ("department_id")
);

CREATE TABLE "roles" (
	"role_id" INT,
	"role_title" VARCHAR,
	"role_salary" DECIMAL,
	"department_id" INT,
	 PRIMARY KEY ("role_id"),
	 CONSTRAINT "fkeycon_roles_to_departments" FOREIGN KEY ("department_id") REFERENCES "departments" ("department_id")
);

CREATE TABLE "employees" (
	"employee_id" INT,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"role_id" INT,
	"manager_id" INT,
	 PRIMARY KEY ("employee_id"),
	 CONSTRAINT "fkeycon_employees_to_roles" FOREIGN KEY ("role_id") REFERENCES "roles" ("role_id"),
	 CONSTRAINT "fkeycon_employees_to_employees" FOREIGN KEY ("manager_id") REFERENCES "employees" ("employee_id")
);
