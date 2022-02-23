DROP DATABASE IF EXISTS "schema1320";
CREATE DATABASE "schema1320";
USE "schema1320";
CREATE TABLE "departments" (
	"id" INTEGER,
	"dep_name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "roles" (
	"id" INTEGER,
	"job" VARCHAR,
	"salary" INTEGER,
	"dep_id" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_roles_to_departments" FOREIGN KEY ("dep_id") REFERENCES "departments" ("id")
);

CREATE TABLE "employees" (
	"id" INTEGER,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"manager_id" INTEGER,
	"role_id" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_employees_to_roles" FOREIGN KEY ("role_id") REFERENCES "roles" ("id")
);
