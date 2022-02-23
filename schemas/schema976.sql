DROP DATABASE IF EXISTS "schema976";
CREATE DATABASE "schema976";
USE "schema976";
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

CREATE TABLE "departments" (
	"id" INTEGER,
	"department_name" VARCHAR,
	 PRIMARY KEY ("id")
);
