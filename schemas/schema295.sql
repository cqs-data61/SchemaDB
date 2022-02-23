DROP DATABASE IF EXISTS "schema295";
CREATE DATABASE "schema295";
USE "schema295";
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
