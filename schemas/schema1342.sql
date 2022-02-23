DROP DATABASE IF EXISTS "schema1342";
CREATE DATABASE "schema1342";
USE "schema1342";
CREATE TABLE "task" (
	"id" INT,
	"name" VARCHAR,
	"date" TIMESTAMP,
	"cat_id" INT,
	"file" VARCHAR,
	"done" SMALLINT,
	"user_id" INT,
	"dt_add" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "category" (
	"id" INT,
	"name" VARCHAR,
	"user_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"id" INT,
	"name" VARCHAR,
	"email" VARCHAR,
	"pass" CHAR,
	"dt_add" TIMESTAMP,
	 PRIMARY KEY ("id")
);
