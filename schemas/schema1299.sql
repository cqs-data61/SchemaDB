DROP DATABASE IF EXISTS "schema1299";
CREATE DATABASE "schema1299";
USE "schema1299";
CREATE TABLE "department" (
	"department_id" INT,
	"name" VARCHAR,
	 PRIMARY KEY ("department_id")
);

CREATE TABLE "role" (
	"role_id" INT,
	"title" VARCHAR,
	"salary" DECIMAL,
	"department_id" INT,
	 PRIMARY KEY ("role_id"),
	 CONSTRAINT "fkeycon_role_to_department" FOREIGN KEY ("department_id") REFERENCES "department" ("department_id")
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
