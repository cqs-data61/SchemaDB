DROP DATABASE IF EXISTS "schema88";
CREATE DATABASE "schema88";
USE "schema88";
CREATE TABLE "department" (
	"id" INT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "roll" (
	"id" INT,
	"title" VARCHAR,
	"salary" DECIMAL,
	"department_id" INT,
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
