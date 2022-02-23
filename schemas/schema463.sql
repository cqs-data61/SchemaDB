DROP DATABASE IF EXISTS "schema463";
CREATE DATABASE "schema463";
USE "schema463";
CREATE TABLE "departments" (
	"id" INT,
	"dpt_name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "roles" (
	"id" INT,
	"title" VARCHAR,
	"salary" DECIMAL,
	"dpt_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_department" FOREIGN KEY ("dpt_id") REFERENCES "departments" ("id")
);

CREATE TABLE "employees" (
	"id" INT,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"role_id" INT,
	"mgr_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_role" FOREIGN KEY ("role_id") REFERENCES "roles" ("id"),
	 CONSTRAINT "fk_manager" FOREIGN KEY ("mgr_id") REFERENCES "employees" ("id")
);
