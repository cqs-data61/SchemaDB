DROP DATABASE IF EXISTS "schema1406";
CREATE DATABASE "schema1406";
USE "schema1406";
CREATE TABLE "department" (
	"id" INT,
	"department_name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "role" (
	"role_id" INT,
	"role_title" VARCHAR,
	"role_salary" DECIMAL,
	"department_id" INT,
	 PRIMARY KEY ("role_id"),
	 CONSTRAINT "fkeycon_role_to_department" FOREIGN KEY ("department_id") REFERENCES "department" ("id")
);

CREATE TABLE "employee" (
	"employee_id" INT,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"role_id" INT,
	"manager_id" INT,
	 PRIMARY KEY ("employee_id"),
	 CONSTRAINT "fkeycon_employee_to_role" FOREIGN KEY ("role_id") REFERENCES "role" ("role_id")
);
