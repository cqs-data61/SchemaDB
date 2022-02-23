DROP DATABASE IF EXISTS "schema247";
CREATE DATABASE "schema247";
USE "schema247";
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
