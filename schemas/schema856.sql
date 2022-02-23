DROP DATABASE IF EXISTS "schema856";
CREATE DATABASE "schema856";
USE "schema856";
CREATE TABLE "rateplans" (
	"id" NUMBER,
	"name" VARCHAR,
	"deleted" BOOLEAN,
	"created" TIMESTAMP,
	"modified" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "todo" (
	"id" NUMBER,
	"description" VARCHAR,
	"created" TIMESTAMP,
	"modified" TIMESTAMP,
	"completed" BOOLEAN,
	 PRIMARY KEY ("id")
);
