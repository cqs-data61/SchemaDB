DROP DATABASE IF EXISTS "schema1032";
CREATE DATABASE "schema1032";
USE "schema1032";
CREATE TABLE "department" (
	"id" INT,
	"dept_name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "employeerole" (
	"id" INT,
	"role_title" VARCHAR,
	"salary" DECIMAL,
	"dept_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "employee" (
	"id" INT,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"role_id" INT,
	"manager_id" INT,
	 PRIMARY KEY ("id")
);
