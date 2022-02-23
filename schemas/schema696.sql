DROP DATABASE IF EXISTS "schema696";
CREATE DATABASE "schema696";
USE "schema696";
CREATE TABLE "department" (
	"id" INTEGER,
	"_name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "_role" (
	"id" INTEGER,
	"title" VARCHAR,
	"salary" DECIMAL,
	"department_id" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_department" FOREIGN KEY ("department_id") REFERENCES "department" ("id")
);

CREATE TABLE "employees" (
	"id" INTEGER,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"role_id" INTEGER,
	"manager_id" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_role" FOREIGN KEY ("role_id") REFERENCES "_role" ("id")
);
