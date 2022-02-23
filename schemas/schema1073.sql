DROP DATABASE IF EXISTS "schema1073";
CREATE DATABASE "schema1073";
USE "schema1073";
CREATE TABLE "message" (
	"id" BIGSERIAL,
	"content" VARCHAR,
	"account_id_to" INTEGER,
	"account_id_from" INTEGER,
	"created" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "account" (
	"id" BIGSERIAL,
	"name" VARCHAR,
	"password_hash" VARCHAR,
	"created" DATETIME,
	 PRIMARY KEY ("id")
);
