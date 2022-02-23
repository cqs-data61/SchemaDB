DROP DATABASE IF EXISTS "schema438";
CREATE DATABASE "schema438";
USE "schema438";
CREATE TABLE "customer" (
	"id" BIGINT,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "transaction" (
	"id" BIGINT,
	"customer_id" BIGINT,
	"transaction_date" DATETIME,
	"transaction_amount" DECIMAL,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_transaction_to_customer" FOREIGN KEY ("customer_id") REFERENCES "customer" ("id")
);
