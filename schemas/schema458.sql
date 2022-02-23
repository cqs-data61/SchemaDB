DROP DATABASE IF EXISTS "schema458";
CREATE DATABASE "schema458";
USE "schema458";
CREATE TABLE "departments" (
	"id" INTEGER,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "roles" (
	"id" INTEGER,
	"title" VARCHAR,
	"salary" DECIMAL,
	"department_id" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_department" FOREIGN KEY ("department_id") REFERENCES "departments" ("id")
);

CREATE TABLE "employees" (
	"id" INTEGER,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"manager_id" INTEGER,
	"role_id" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_role" FOREIGN KEY ("role_id") REFERENCES "roles" ("id"),
	 CONSTRAINT "fk_manager" FOREIGN KEY ("manager_id") REFERENCES "employees" ("id")
);
