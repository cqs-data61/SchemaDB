DROP DATABASE IF EXISTS "schema138";
CREATE DATABASE "schema138";
USE "schema138";
CREATE TABLE "department" (
	"id" INT,
	"department_name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "role" (
	"id" INT,
	"title" VARCHAR,
	"salary" DECIMAL,
	"department_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_department" FOREIGN KEY ("department_id") REFERENCES "department" ("id")
);

CREATE TABLE "employee" (
	"id" INT,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"role_id" INT,
	"manager_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_role" FOREIGN KEY ("role_id") REFERENCES "role" ("id"),
	 CONSTRAINT "fk_manager" FOREIGN KEY ("manager_id") REFERENCES "employee" ("id")
);
