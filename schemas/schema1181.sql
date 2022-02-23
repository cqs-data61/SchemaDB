DROP DATABASE IF EXISTS "schema1181";
CREATE DATABASE "schema1181";
USE "schema1181";
CREATE TABLE "triples" (
	"subject" BINARY,
	"predicate" VARCHAR,
	"object" BINARY,
	"priority" INT,
	"deleted" TINYINT,
	 PRIMARY KEY ("subject")
);

CREATE TABLE "entities" (
	"id" BINARY,
	"type" VARCHAR,
	"entity" LONGTEXT,
	"created" DATETIME,
	"updated" DATETIME,
	"deleted" TINYINT,
	 PRIMARY KEY ("id")
);
