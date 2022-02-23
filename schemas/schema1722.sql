DROP DATABASE IF EXISTS "schema1722";
CREATE DATABASE "schema1722";
USE "schema1722";
CREATE TABLE "employees" (
	"id" INT,
	"name" VARCHAR,
	"role_id" INT,
	"manager_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "employees_ibfk_2" FOREIGN KEY ("manager_id") REFERENCES "employees" ("id")
);

CREATE TABLE "departments" (
	"id" INT,
	"department_name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "roles" (
	"id" INT,
	"title" VARCHAR,
	"salary" DECIMAL,
	"department_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "roles_ibfk_1" FOREIGN KEY ("department_id") REFERENCES "departments" ("id")
);
