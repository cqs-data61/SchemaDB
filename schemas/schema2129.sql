DROP DATABASE IF EXISTS "schema2129";
CREATE DATABASE "schema2129";
USE "schema2129";
CREATE TABLE "posts" (
	"id" SERIAL,
	"topic" TEXT,
	"text" TEXT,
	"user_id" INT,
	"created" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"id" SERIAL,
	"username" VARCHAR,
	"password" VARCHAR,
	 PRIMARY KEY ("id")
);
