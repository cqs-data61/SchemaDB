DROP DATABASE IF EXISTS "schema852";
CREATE DATABASE "schema852";
USE "schema852";
CREATE TABLE "departments" (
	"id" INT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "roles" (
	"id" INT,
	"title" VARCHAR,
	"salary" DECIMAL,
	"department_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_roles_to_departments" FOREIGN KEY ("department_id") REFERENCES "departments" ("id")
);

CREATE TABLE "employees" (
	"id" INT,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"manager_id" INT,
	"role_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_employees_to_roles" FOREIGN KEY ("role_id") REFERENCES "roles" ("id"),
	 CONSTRAINT "fkeycon_employees_to_employees" FOREIGN KEY ("manager_id") REFERENCES "employees" ("id")
);
