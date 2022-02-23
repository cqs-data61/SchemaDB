DROP DATABASE IF EXISTS "schema640";
CREATE DATABASE "schema640";
USE "schema640";
CREATE TABLE "departments" (
	"id" INTEGER,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "roles" (
	"id" INTEGER,
	"title" VARCHAR,
	"salary" DECIMAL,
	"department_id" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_roles_to_departments" FOREIGN KEY ("department_id") REFERENCES "departments" ("id")
);

CREATE TABLE "employees" (
	"id" INTEGER,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"role_id" INTEGER,
	"manager" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_employees_to_roles" FOREIGN KEY ("role_id") REFERENCES "roles" ("id")
);
