DROP DATABASE IF EXISTS "schema1862";
CREATE DATABASE "schema1862";
USE "schema1862";
CREATE TABLE "categories" (
	"id" SERIAL,
	"name" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "j_user" (
	"id" SERIAL,
	"name" VARCHAR,
	"email" VARCHAR,
	"role_id" INT,
	"password" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "j_role" (
	"id" SERIAL,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "task" (
	"id" SERIAL,
	"name" TEXT,
	"created" TIMESTAMP,
	"done" BOOLEAN,
	"user_id" INT,
	 PRIMARY KEY ("id")
);
