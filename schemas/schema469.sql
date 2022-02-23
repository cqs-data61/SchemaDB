DROP DATABASE IF EXISTS "schema469";
CREATE DATABASE "schema469";
USE "schema469";
CREATE TABLE "department" (
	"id" INT,
	"name" VARCHAR
);

CREATE TABLE "role" (
	"id" INT,
	"title" VARCHAR,
	"salary" DECIMAL,
	"department_id" INT,
	 CONSTRAINT "fk_department" FOREIGN KEY ("department_id") REFERENCES "department" ("id")
);

CREATE TABLE "employee" (
	"id" INT,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"role_id" INT,
	"manager_id" INT,
	 CONSTRAINT "fk_role" FOREIGN KEY ("role_id") REFERENCES "role" ("id")
);
