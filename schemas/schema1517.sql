DROP DATABASE IF EXISTS "schema1517";
CREATE DATABASE "schema1517";
USE "schema1517";
CREATE TABLE "projects" (
	"id" BIGINT,
	"account_id" BIGINT,
	"name" VARCHAR,
	"active" BIT
);

CREATE TABLE "accounts" (
	"id" BIGINT,
	"owner_id" BIGINT,
	"name" VARCHAR
);

CREATE TABLE "users" (
	"id" BIGINT,
	"name" VARCHAR
);
