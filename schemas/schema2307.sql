DROP DATABASE IF EXISTS "schema2307";
CREATE DATABASE "schema2307";
USE "schema2307";
CREATE TABLE "transfers" (
	"id" INT,
	"account_id" INT,
	"type" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "accounts" (
	"id" INT,
	"account_number" VARCHAR,
	"balance" DOUBLE,
	"name" VARCHAR,
	"customer_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "customers" (
	"id" INT,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"bank_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "banks" (
	"id" INT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);
