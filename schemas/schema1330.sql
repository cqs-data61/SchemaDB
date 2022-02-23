DROP DATABASE IF EXISTS "schema1330";
CREATE DATABASE "schema1330";
USE "schema1330";
CREATE TABLE "item" (
	"id" SERIAL,
	"desc" TEXT,
	"created" DATETIME,
	"done" BOOLEAN,
	"user_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "user" (
	"id" SERIAL,
	"name" VARCHAR,
	"email" VARCHAR,
	"password" TEXT,
	 PRIMARY KEY ("id")
);
