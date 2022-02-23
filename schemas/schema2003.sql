DROP DATABASE IF EXISTS "schema2003";
CREATE DATABASE "schema2003";
USE "schema2003";
CREATE TABLE "rateplans" (
	"id" VARCHAR,
	"name" VARCHAR,
	"deleted" BOOLEAN,
	"created" TIMESTAMP,
	"modified" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "todo" (
	"id" VARCHAR,
	"description" VARCHAR,
	"created" TIMESTAMP,
	"modified" TIMESTAMP,
	"completed" BOOLEAN,
	 PRIMARY KEY ("id")
);
