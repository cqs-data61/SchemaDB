DROP DATABASE IF EXISTS "schema241";
CREATE DATABASE "schema241";
USE "schema241";
CREATE TABLE "roles" (
	"id" INTEGER,
	"title" VARCHAR,
	"salary" DECIMAL,
	"department_id" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "departments" (
	"id" INTEGER,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "employees" (
	"id" INTEGER,
	"firstname" VARCHAR,
	"lastname" VARCHAR,
	"role_id" INTEGER,
	"manager_id" INTEGER,
	 PRIMARY KEY ("id")
);
