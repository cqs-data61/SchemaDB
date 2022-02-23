DROP DATABASE IF EXISTS "schema1523";
CREATE DATABASE "schema1523";
USE "schema1523";
CREATE TABLE "accounts" (
	"id" BIGSERIAL,
	"owner" VARCHAR,
	"balance" BIGINT,
	"currency" VARCHAR,
	"created_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "transfers" (
	"id" BIGSERIAL,
	"from_account_id" BIGINT,
	"to_account_id" BIGINT,
	"amount" BIGINT,
	"created_at" DATETIME,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_transfers_to_accounts" FOREIGN KEY ("to_account_id") REFERENCES "accounts" ("id")
);

CREATE TABLE "entries" (
	"id" BIGSERIAL,
	"account_id" BIGINT,
	"amount" BIGINT,
	"created_at" DATETIME,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_entries_to_accounts" FOREIGN KEY ("account_id") REFERENCES "accounts" ("id")
);
