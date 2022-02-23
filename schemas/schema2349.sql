DROP DATABASE IF EXISTS "schema2349";
CREATE DATABASE "schema2349";
USE "schema2349";
CREATE TABLE "document" (
	"id" CHAR,
	"path" VARCHAR,
	"name" VARCHAR,
	"tags" VARCHAR,
	"modified" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "conf" (
	"key" VARCHAR,
	"value" VARCHAR,
	 PRIMARY KEY ("key")
);
