DROP DATABASE IF EXISTS "schema2316";
CREATE DATABASE "schema2316";
USE "schema2316";
CREATE TABLE "employee" (
	"id" INTEGER,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"role_id" INT,
	"manager_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "role" (
	"id" INTEGER,
	"title" VARCHAR,
	"salary" DECIMAL,
	"department_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "department" (
	"id" INTEGER,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);
