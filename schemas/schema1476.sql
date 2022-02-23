DROP DATABASE IF EXISTS "schema1476";
CREATE DATABASE "schema1476";
USE "schema1476";
CREATE TABLE "withdrawals" (
	"id" VARCHAR,
	"processed_by" VARCHAR,
	"amount" INT,
	"opening_balance" INT,
	"transaction_reference" VARCHAR,
	"transaction_source" VARCHAR,
	"source_reference" VARCHAR,
	"platform" VARCHAR,
	"approved_by" VARCHAR,
	"status" VARCHAR,
	"comments" VARCHAR,
	"owner_id" VARCHAR,
	"created_by" VARCHAR,
	"updated_by" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "payments" (
	"id" VARCHAR,
	"processed_by" VARCHAR,
	"amount" INT,
	"opening_balance" INT,
	"status" VARCHAR,
	"transaction_reference" VARCHAR,
	"transaction_source" VARCHAR,
	"source_reference" VARCHAR,
	"platform" VARCHAR,
	"comments" VARCHAR,
	"owner_id" VARCHAR,
	"created_by" VARCHAR,
	"updated_by" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "wallet_transactions" (
	"id" VARCHAR,
	"transaction_type" VARCHAR,
	"transaction_reference" VARCHAR,
	"source" VARCHAR,
	"amount" INT,
	"opening_balance" INT,
	"platform" VARCHAR,
	"owner_id" VARCHAR,
	"comment" VARCHAR,
	"created_by" VARCHAR,
	"updated_by" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "wallets" (
	"id" VARCHAR,
	"total_balance" INT,
	"available_balance" INT,
	"version" INT,
	"owner_id" VARCHAR,
	"created_by" VARCHAR,
	"updated_by" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "virtual_accounts" (
	"id" VARCHAR,
	"account_name" VARCHAR,
	"account_number" VARCHAR,
	"bank_name" VARCHAR,
	"provider" VARCHAR,
	"reference" VARCHAR,
	"owner_id" VARCHAR,
	"created_by" VARCHAR,
	"updated_by" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "banking_kyc" (
	"id" VARCHAR,
	"name" VARCHAR,
	"bank_account_name" VARCHAR,
	"bank_account_number" VARCHAR,
	"bvn" VARCHAR,
	"bank_code" VARCHAR,
	"owner_id" VARCHAR,
	"verified" BOOLEAN,
	"created_by" VARCHAR,
	"updated_by" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);
