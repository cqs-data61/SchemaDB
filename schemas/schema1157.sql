DROP DATABASE IF EXISTS "schema1157";
CREATE DATABASE "schema1157";
USE "schema1157";
CREATE TABLE "employee" (
	"employee_id" INT,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"role_id" INT,
	"manager_id" INT,
	 PRIMARY KEY ("employee_id")
);

CREATE TABLE "role" (
	"role_id" INT,
	"title" VARCHAR,
	"salary" DECIMAL,
	"department_id" INT,
	 PRIMARY KEY ("role_id")
);

CREATE TABLE "department" (
	"department_id" INT,
	"department_name" VARCHAR,
	 PRIMARY KEY ("department_id")
);
