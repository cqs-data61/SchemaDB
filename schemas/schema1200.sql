DROP DATABASE IF EXISTS "schema1200";
CREATE DATABASE "schema1200";
USE "schema1200";
CREATE TABLE "departments" (
	"id" INT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "roles" (
	"id" INT,
	"title" VARCHAR,
	"salary" INT,
	"department_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_roles_to_departments" FOREIGN KEY ("department_id") REFERENCES "departments" ("id")
);

CREATE TABLE "employees" (
	"id" INT,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"role_id" INT,
	"manager_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_employees_to_roles" FOREIGN KEY ("role_id") REFERENCES "roles" ("id")
);
