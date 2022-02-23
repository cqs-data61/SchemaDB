DROP DATABASE IF EXISTS "schema1286";
CREATE DATABASE "schema1286";
USE "schema1286";
CREATE TABLE "ticket" (
	"id" SERIAL,
	"session_id" INT,
	"row" INT,
	"cell" INT,
	"account_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "account" (
	"id" SERIAL,
	"username" VARCHAR,
	"email" VARCHAR,
	"phone" VARCHAR,
	 PRIMARY KEY ("id")
);
