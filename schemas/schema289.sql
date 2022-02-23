DROP DATABASE IF EXISTS "schema289";
CREATE DATABASE "schema289";
USE "schema289";
CREATE TABLE "accounting_entry" (
	"id" INT,
	"entry_name" VARCHAR,
	"notes" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "company" (
	"id" INT,
	"company_name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "account" (
	"id" INT,
	"company_id" INT,
	"balance" NUMERIC,
	"account_number" VARCHAR,
	"nickname" VARCHAR,
	"account_type" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "FK_ACCOUNT_COMPANY" FOREIGN KEY ("company_id") REFERENCES "company" ("id")
);

CREATE TABLE "adjustment" (
	"id" INT,
	"account_id" INT,
	"accounting_entry_id" INT,
	"amount" NUMERIC,
	"transaction_type" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "FK_ACCOUNT_TRANSACTION" FOREIGN KEY ("account_id") REFERENCES "account" ("id"),
	 CONSTRAINT "FK_ACCOUNTING_ENTRY_TRANSACTION" FOREIGN KEY ("accounting_entry_id") REFERENCES "accounting_entry" ("id")
);
