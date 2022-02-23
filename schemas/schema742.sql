DROP DATABASE IF EXISTS "schema742";
CREATE DATABASE "schema742";
USE "schema742";
CREATE TABLE "user" (
	"id" BIGINT,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"email" VARCHAR,
	"password" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "account" (
	"id" BIGINT,
	"currency" VARCHAR,
	"balance" FLOAT,
	"holder_id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_account_to_user" FOREIGN KEY ("holder_id") REFERENCES "user" ("id")
);

CREATE TABLE "transaction" (
	"id" BIGINT,
	"send_amount" FLOAT,
	"receive_amount" FLOAT,
	"send_currency" VARCHAR,
	"receive_currency" VARCHAR,
	"sender_account_id" BIGINT,
	"recipient_account_id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_transaction_to_account" FOREIGN KEY ("recipient_account_id") REFERENCES "account" ("id")
);

CREATE TABLE "deposit" (
	"id" BIGINT,
	"amount" FLOAT,
	"account_id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_deposit_to_account" FOREIGN KEY ("account_id") REFERENCES "account" ("id")
);
