DROP DATABASE IF EXISTS "schema457";
CREATE DATABASE "schema457";
USE "schema457";
CREATE TABLE "code" (
	"id" INT,
	"value" VARCHAR,
	"region_id" INT
);

CREATE TABLE "region" (
	"id" INT,
	"name" VARCHAR
);
