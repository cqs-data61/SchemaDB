DROP DATABASE IF EXISTS "schema1210";
CREATE DATABASE "schema1210";
USE "schema1210";
CREATE TABLE "employee" (
	"id" INTEGER,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"role_id" INTEGER,
	"manager_id" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "roles" (
	"id" INTEGER,
	"title" VARCHAR,
	"salary" DECIMAL,
	"depart_id" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "departments" (
	"id" INTEGER,
	"depart_name" VARCHAR,
	 PRIMARY KEY ("id")
);
