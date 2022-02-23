DROP DATABASE IF EXISTS "schema1014";
CREATE DATABASE "schema1014";
USE "schema1014";
CREATE TABLE "department" (
	"id" INTEGER,
	"department_name" VARCHAR
);

CREATE TABLE "employee_role" (
	"id" INTEGER,
	"title" VARCHAR,
	"salary" DECIMAL,
	"department_id" INTEGER,
	 CONSTRAINT "fk_department" FOREIGN KEY ("department_id") REFERENCES "department" ("id")
);

CREATE TABLE "employee" (
	"id" INTEGER,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"emp_role_id" INTEGER,
	 CONSTRAINT "role_key" FOREIGN KEY ("emp_role_id") REFERENCES "employee_role" ("id")
);
