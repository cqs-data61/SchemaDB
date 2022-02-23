DROP DATABASE IF EXISTS "schema928";
CREATE DATABASE "schema928";
USE "schema928";
CREATE TABLE "employee" (
	"id" INT,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"role_id" INT,
	"manager_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "employeerole" (
	"id" INT,
	"title" VARCHAR,
	"salary" DECIMAL,
	"department_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "department" (
	"id" INT,
	"dept_name" VARCHAR,
	 PRIMARY KEY ("id")
);
