DROP DATABASE IF EXISTS "schema1945";
CREATE DATABASE "schema1945";
USE "schema1945";
CREATE TABLE "banks" (
	"id" INT,
	"name" VARCHAR,
	"account_number" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"id" INT,
	"name" VARCHAR,
	"email" VARCHAR,
	 PRIMARY KEY ("id")
);
