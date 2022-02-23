DROP DATABASE IF EXISTS "schema2077";
CREATE DATABASE "schema2077";
USE "schema2077";
CREATE TABLE "employee" (
	"id" INT,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"role_id" INT,
	"manager_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "department" (
	"id" INT,
	"dept_name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "employee_role" (
	"id" INT,
	"title" VARCHAR,
	"salary" DECIMAL,
	"dept_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_employee_role_to_department" FOREIGN KEY ("dept_id") REFERENCES "department" ("id")
);
