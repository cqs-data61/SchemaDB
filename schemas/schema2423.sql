DROP DATABASE IF EXISTS "schema2423";
CREATE DATABASE "schema2423";
USE "schema2423";
CREATE TABLE "department" (
	"id" INTEGER,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "role" (
	"id" INTEGER,
	"title" VARCHAR,
	"salary" DECIMAL,
	"department_id" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_department" FOREIGN KEY ("department_id") REFERENCES "department" ("id")
);

CREATE TABLE "employee" (
	"id" INTEGER,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"role_id" INTEGER,
	"manager_id" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_role" FOREIGN KEY ("role_id") REFERENCES "role" ("id"),
	 CONSTRAINT "fk_manager" FOREIGN KEY ("manager_id") REFERENCES "employee" ("id")
);
