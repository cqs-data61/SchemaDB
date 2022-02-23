DROP DATABASE IF EXISTS "schema1453";
CREATE DATABASE "schema1453";
USE "schema1453";
CREATE TABLE "subaccount" (
	"id" VARCHAR,
	"user_id" VARCHAR,
	"currency" VARCHAR,
	"amount" DECIMAL
);

CREATE TABLE "user" (
	"id" VARCHAR,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"pesel" BIGINT
);
