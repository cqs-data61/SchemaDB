DROP DATABASE IF EXISTS "schema695";
CREATE DATABASE "schema695";
USE "schema695";
CREATE TABLE "employee" (
	"employee_id" INT,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"role_id" INT,
	"role_id" INT,
	"manager_id" INT
);

CREATE TABLE "departments" (
	"department_id" INT,
	"department_name" VARCHAR
);

CREATE TABLE "roles" (
	"role_id" INT,
	"role_title" VARCHAR,
	"role_salery" DECIMAL,
	"department_id" INT,
	 PRIMARY KEY ("role_id"),
	 CONSTRAINT "fk_role_departmentID" FOREIGN KEY ("department_id") REFERENCES "departments" ("department_id")
);
