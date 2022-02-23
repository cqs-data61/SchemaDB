DROP DATABASE IF EXISTS "schema1114";
CREATE DATABASE "schema1114";
USE "schema1114";
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
