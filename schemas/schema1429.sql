DROP DATABASE IF EXISTS "schema1429";
CREATE DATABASE "schema1429";
USE "schema1429";
CREATE TABLE "employee" (
	"id" INT,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"role_id" INT,
	"manager_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "role" (
	"title" VARCHAR,
	"id" INT,
	"department_id" INT,
	"salary" DECIMAL,
	 PRIMARY KEY ("id")
);

CREATE TABLE "department" (
	"id" INT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);
