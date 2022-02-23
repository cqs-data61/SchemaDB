DROP DATABASE IF EXISTS "schema1929";
CREATE DATABASE "schema1929";
USE "schema1929";
CREATE TABLE "employee" (
	"id" INTEGER,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"role_id" INTEGER,
	"manager_id" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "employeerole" (
	"id" INTEGER,
	"title" VARCHAR,
	"salary" DECIMAL,
	"department_id" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "department" (
	"id" INTEGER,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);
