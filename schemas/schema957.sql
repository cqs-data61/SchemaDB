DROP DATABASE IF EXISTS "schema957";
CREATE DATABASE "schema957";
USE "schema957";
CREATE TABLE "department" (
	"department_id" INTEGER,
	"department_name" VARCHAR,
	 PRIMARY KEY ("department_id")
);

CREATE TABLE "role" (
	"role_id" INTEGER,
	"title" VARCHAR,
	"salary" DECIMAL,
	"department_id" INTEGER,
	 PRIMARY KEY ("role_id"),
	 CONSTRAINT "fkeycon_role_to_department" FOREIGN KEY ("department_id") REFERENCES "department" ("department_id")
);

CREATE TABLE "employee" (
	"employee_id" INTEGER,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"role_id" INTEGER,
	"manager_id" INTEGER,
	"manager_name" VARCHAR,
	 PRIMARY KEY ("employee_id"),
	 CONSTRAINT "fkeycon_employee_to_role" FOREIGN KEY ("role_id") REFERENCES "role" ("role_id")
);
