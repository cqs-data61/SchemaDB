DROP DATABASE IF EXISTS "schema1715";
CREATE DATABASE "schema1715";
USE "schema1715";
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
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);
