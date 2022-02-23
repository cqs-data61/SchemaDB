DROP DATABASE IF EXISTS "schema2331";
CREATE DATABASE "schema2331";
USE "schema2331";
CREATE TABLE "computer" (
	"id" BIGINT,
	"name" VARCHAR,
	"introduced" TIMESTAMP,
	"discontinued" TIMESTAMP,
	"company_id" BIGINT
);

CREATE TABLE "company" (
	"id" BIGINT,
	"name" VARCHAR
);
