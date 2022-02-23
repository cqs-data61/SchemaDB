DROP DATABASE IF EXISTS "schema2469";
CREATE DATABASE "schema2469";
USE "schema2469";
CREATE TABLE "link" (
	"id" INT,
	"size" CHAR,
	"mf" VARCHAR,
	"yoox" VARCHAR
);

CREATE TABLE "customer" (
	"id" VARCHAR,
	"pwd" VARCHAR,
	"name" VARCHAR,
	"age" INT,
	"height" FLOAT,
	"weight" INT
);
