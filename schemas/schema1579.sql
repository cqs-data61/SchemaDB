DROP DATABASE IF EXISTS "schema1579";
CREATE DATABASE "schema1579";
USE "schema1579";
CREATE TABLE "department" (
	"id" INTEGER,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "employeerole" (
	"id" INTEGER,
	"title" VARCHAR,
	"salary" DECIMAL,
	"department_id" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "FK_department_id" FOREIGN KEY ("department_id") REFERENCES "department" ("id")
);

CREATE TABLE "employee" (
	"id" INTEGER,
	"first_name" VARCHAR,
	"lats_name" VARCHAR,
	"role_id" INTEGER,
	"manager_id" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "FK_manager_id" FOREIGN KEY ("manager_id") REFERENCES "employeerole" ("id"),
	 CONSTRAINT "FK_role_id" FOREIGN KEY ("role_id") REFERENCES "employeerole" ("id")
);
