DROP DATABASE IF EXISTS "schema2204";
CREATE DATABASE "schema2204";
USE "schema2204";
CREATE TABLE "transactions" (
	"id" VARCHAR,
	"purchaser_account_id" VARCHAR,
	"purchased_from_account_id" VARCHAR,
	"amount" DECIMAL,
	 PRIMARY KEY ("id")
);

CREATE TABLE "accounts" (
	"id" VARCHAR,
	"owner_id" VARCHAR,
	"balance" DECIMAL,
	"credit_limit" DECIMAL,
	"card_id" VARCHAR,
	 PRIMARY KEY ("id")
);
