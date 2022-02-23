DROP DATABASE IF EXISTS "schema1099";
CREATE DATABASE "schema1099";
USE "schema1099";
CREATE TABLE "employees" (
	"id" INT,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"role_id" INT,
	"manager_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "roles" (
	"id" INT,
	"title" VARCHAR,
	"salary" DECIMAL,
	"department_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "departments" (
	"id" INT,
	"department_name" VARCHAR,
	 PRIMARY KEY ("id")
);
