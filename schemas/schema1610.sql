DROP DATABASE IF EXISTS "schema1610";
CREATE DATABASE "schema1610";
USE "schema1610";
CREATE TABLE "department" (
	"id" INT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "role" (
	"id" INT,
	"title" VARCHAR,
	"salary" DECIMAL,
	"department_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "employee" (
	"id" INT,
	"firts_name" VARCHAR,
	"last_name" VARCHAR,
	"role_id" INT,
	"manager_id" INT,
	 PRIMARY KEY ("id")
);
