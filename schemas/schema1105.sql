DROP DATABASE IF EXISTS "schema1105";
CREATE DATABASE "schema1105";
USE "schema1105";
CREATE TABLE "employees" (
	"employee_id" VARCHAR,
	"name" VARCHAR,
	 PRIMARY KEY ("employee_id")
);

CREATE TABLE "dependents" (
	"employee_id" VARCHAR,
	"dependent_id" VARCHAR,
	"name" VARCHAR,
	 CONSTRAINT "fkeycon_dependents_to_employees" FOREIGN KEY ("employee_id") REFERENCES "employees" ("employee_id")
);
