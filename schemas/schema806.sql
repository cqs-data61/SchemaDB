DROP DATABASE IF EXISTS "schema806";
CREATE DATABASE "schema806";
USE "schema806";
CREATE TABLE "ticket" (
	"id" SERIAL,
	"row" INT,
	"col" INT,
	"price" INT,
	"status" VARCHAR,
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
