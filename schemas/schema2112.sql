DROP DATABASE IF EXISTS "schema2112";
CREATE DATABASE "schema2112";
USE "schema2112";
CREATE TABLE "employees" (
	"id" INT,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"role_id" INTEGER,
	"manager_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "roles" (
	"id" INT,
	"title" VARCHAR,
	"salary" DECIMAL,
	"department_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "departments" (
	"id" INT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);
