DROP DATABASE IF EXISTS "schema147";
CREATE DATABASE "schema147";
USE "schema147";
CREATE TABLE "departments" (
	"id" INTEGER,
	"department_name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "roles" (
	"id" INTEGER,
	"title" VARCHAR,
	"salary" DECIMAL,
	"department_id" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_departments" FOREIGN KEY ("department_id") REFERENCES "departments" ("id")
);

CREATE TABLE "employee" (
	"id" INTEGER,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"role_id" INTEGER,
	"manager_id" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_roles" FOREIGN KEY ("role_id") REFERENCES "roles" ("id")
);
