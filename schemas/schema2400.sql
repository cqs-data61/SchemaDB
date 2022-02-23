DROP DATABASE IF EXISTS "schema2400";
CREATE DATABASE "schema2400";
USE "schema2400";
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
