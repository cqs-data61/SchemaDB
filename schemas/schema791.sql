DROP DATABASE IF EXISTS "schema791";
CREATE DATABASE "schema791";
USE "schema791";
CREATE TABLE "department" (
	"department_id" INT,
	"department_name" VARCHAR,
	 PRIMARY KEY ("department_id")
);

CREATE TABLE "employee" (
	"employee_id" INT,
	"firstname" VARCHAR,
	"lastname" VARCHAR,
	"email" VARCHAR,
	"salary" INT,
	"department_id" INT,
	 PRIMARY KEY ("employee_id"),
	 CONSTRAINT "EMPLOYEE_DEPARTMENT_FK" FOREIGN KEY ("department_id") REFERENCES "department" ("department_id")
);
