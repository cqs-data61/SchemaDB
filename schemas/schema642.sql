DROP DATABASE IF EXISTS "schema642";
CREATE DATABASE "schema642";
USE "schema642";
CREATE TABLE "tasks" (
	"id" VARCHAR,
	"name" CHARACTER VARYING,
	"description" CHARACTER VARYING,
	"finished" BOOLEAN,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "schema_migration" (
	"version" CHARACTER VARYING
);
