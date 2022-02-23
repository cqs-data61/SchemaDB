DROP DATABASE IF EXISTS "schema1991";
CREATE DATABASE "schema1991";
USE "schema1991";
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
