DROP DATABASE IF EXISTS "schema1468";
CREATE DATABASE "schema1468";
USE "schema1468";
CREATE TABLE "departments" (
	"id" INT,
	"name" VARCHAR
);

CREATE TABLE "roles" (
	"id" INT,
	"title" VARCHAR,
	"salary" FLOAT,
	"department_id" INT,
	 CONSTRAINT "fkeycon_roles_to_departments" FOREIGN KEY ("department_id") REFERENCES "departments" ("id")
);

CREATE TABLE "employees" (
	"id" INT,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"role_id" INT,
	"manager_id" INT,
	 CONSTRAINT "fkeycon_employees_to_roles" FOREIGN KEY ("role_id") REFERENCES "roles" ("id"),
	 CONSTRAINT "fkeycon_employees_to_employees" FOREIGN KEY ("manager_id") REFERENCES "employees" ("id")
);
