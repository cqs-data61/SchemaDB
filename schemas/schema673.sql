DROP DATABASE IF EXISTS "schema673";
CREATE DATABASE "schema673";
USE "schema673";
CREATE TABLE "transaction_status" (
	"id" INT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "currency" (
	"id" INT,
	"name" VARCHAR,
	"abbr" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "bank_account" (
	"id" IDENTITY,
	"account_holder_name" VARCHAR,
	"balance" DECIMAL,
	"currency_id" INT,
	 CONSTRAINT "fkeycon_bank_account_to_currency" FOREIGN KEY ("currency_id") REFERENCES "currency" ("id")
);

CREATE TABLE "transaction" (
	"id" IDENTITY,
	"from_account_id" BIGINT,
	"to_account_id" BIGINT,
	"amount" DECIMAL,
	"currency_id" INT,
	"creation_date" TIMESTAMP,
	"update_date" TIMESTAMP,
	"status_id" INT,
	"failmessage" VARCHAR,
	 CONSTRAINT "fkeycon_transaction_to_transaction_status" FOREIGN KEY ("status_id") REFERENCES "transaction_status" ("id"),
	 CONSTRAINT "fkeycon_transaction_to_currency" FOREIGN KEY ("currency_id") REFERENCES "currency" ("id"),
	 CONSTRAINT "fkeycon_transaction_to_bank_account" FOREIGN KEY ("to_account_id") REFERENCES "bank_account" ("id")
);
