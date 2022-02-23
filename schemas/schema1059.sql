DROP DATABASE IF EXISTS "schema1059";
CREATE DATABASE "schema1059";
USE "schema1059";
CREATE TABLE "employee" (
	"id" INTEGER,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"role_id" INTEGER,
	"manager_id" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "role" (
	"id" INTEGER,
	"title" VARCHAR,
	"salary" DECIMAL,
	"department_id" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "department" (
	"id" INTEGER,
	"department_name" VARCHAR,
	 PRIMARY KEY ("id")
);
