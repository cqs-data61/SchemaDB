DROP DATABASE IF EXISTS "schema1225";
CREATE DATABASE "schema1225";
USE "schema1225";
CREATE TABLE "users" (
	"id" SERIAL,
	"name" VARCHAR,
	"status" VARCHAR,
	"meeting_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "meeting" (
	"id" SERIAL,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);
