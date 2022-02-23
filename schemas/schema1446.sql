DROP DATABASE IF EXISTS "schema1446";
CREATE DATABASE "schema1446";
USE "schema1446";
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
