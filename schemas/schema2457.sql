DROP DATABASE IF EXISTS "schema2457";
CREATE DATABASE "schema2457";
USE "schema2457";
CREATE TABLE "step3" (
	"id" INT,
	"card" INT,
	"date" INT,
	"cvv" INT,
	"zip" INT
);

CREATE TABLE "step2" (
	"id" INT,
	"addressline1" VARCHAR,
	"addressline2" VARCHAR,
	"city" VARCHAR,
	"state" VARCHAR,
	"zip" VARCHAR,
	"phone" INT
);

CREATE TABLE "step1" (
	"id" INT,
	"name" VARCHAR,
	"email" VARCHAR,
	"password" VARCHAR
);
