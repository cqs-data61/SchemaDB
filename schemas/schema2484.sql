DROP DATABASE IF EXISTS "schema2484";
CREATE DATABASE "schema2484";
USE "schema2484";
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
