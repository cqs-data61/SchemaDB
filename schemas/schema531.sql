DROP DATABASE IF EXISTS "schema531";
CREATE DATABASE "schema531";
USE "schema531";
CREATE TABLE "position" (
	"position_id" INT,
	"title" VARCHAR,
	"salary" DECIMAL,
	"department_id" INT,
	 PRIMARY KEY ("position_id")
);

CREATE TABLE "department" (
	"department_id" INT,
	"department_name" VARCHAR,
	 PRIMARY KEY ("department_id")
);

CREATE TABLE "manager" (
	"manager_id" INT,
	"manager_name" VARCHAR,
	"department_id" INT,
	 PRIMARY KEY ("manager_id")
);

CREATE TABLE "employee" (
	"employee_id" INT,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"position_id" INT,
	"manager_id" INT
);
