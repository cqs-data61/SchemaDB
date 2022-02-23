DROP DATABASE IF EXISTS "schema1643";
CREATE DATABASE "schema1643";
USE "schema1643";
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
	 PRIMARY KEY ("id"),
	 CONSTRAINT "FK_department_id" FOREIGN KEY ("department_id") REFERENCES "department" ("id")
);

CREATE TABLE "employee" (
	"id" INT,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"role_id" INT,
	"manager_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "FK_manager_id" FOREIGN KEY ("manager_id") REFERENCES "employee" ("id"),
	 CONSTRAINT "FK_role_id" FOREIGN KEY ("role_id") REFERENCES "role" ("id")
);
