DROP DATABASE IF EXISTS "schema1317";
CREATE DATABASE "schema1317";
USE "schema1317";
CREATE TABLE "survey" (
	"id" INT,
	"age" INT,
	"satisfaction" INT,
	"comment" VARCHAR,
	"created" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "inquiry" (
	"id" INT,
	"name" VARCHAR,
	"email" VARCHAR,
	"contents" VARCHAR,
	"created" DATETIME,
	 PRIMARY KEY ("id")
);
