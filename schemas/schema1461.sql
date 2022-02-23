DROP DATABASE IF EXISTS "schema1461";
CREATE DATABASE "schema1461";
USE "schema1461";
CREATE TABLE "roles" (
	"id" INT,
	"title" VARCHAR,
	"salary" DECIMAL,
	"department_id" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "employees" (
	"id" INT,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"role_id" INT,
	"manager_id" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_employees_to_roles" FOREIGN KEY ("role_id") REFERENCES "roles" ("id")
);

CREATE TABLE "departments" (
	"id" INT,
	"department_name" VARCHAR,
	 PRIMARY KEY ("id")
);
