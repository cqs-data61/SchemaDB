DROP DATABASE IF EXISTS "schema978";
CREATE DATABASE "schema978";
USE "schema978";
CREATE TABLE "transaction_history" (
	"id" INT,
	"account_id" INT,
	"type" VARCHAR,
	"amount" INT,
	"created_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "account" (
	"id" INT,
	"name" VARCHAR,
	"iban" VARCHAR,
	"type" VARCHAR,
	"is_locked" BOOLEAN,
	"balance" INT,
	"customer_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "customer" (
	"id" INT,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	 PRIMARY KEY ("id")
);
