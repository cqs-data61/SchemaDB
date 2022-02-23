DROP DATABASE IF EXISTS "schema1539";
CREATE DATABASE "schema1539";
USE "schema1539";
CREATE TABLE "currencies" (
	"code" VARCHAR,
	"fraction" BIGINT,
	"created_at" TIMESTAMP,
	 PRIMARY KEY ("code")
);

CREATE TABLE "users" (
	"id" BIGSERIAL,
	"username" VARCHAR,
	"hashed_password" VARCHAR,
	"status" ENUM,
	"full_name" VARCHAR,
	"email" VARCHAR,
	"password_changed_at" TIMESTAMP,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "bank_accounts" (
	"id" BIGSERIAL,
	"account_no" VARCHAR,
	"ifsc" VARCHAR,
	"bank_name" VARCHAR,
	"status" ENUM,
	"user_id" BIGINT,
	"currency" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_bank_accounts_to_currencies" FOREIGN KEY ("currency") REFERENCES "currencies" ("code"),
	 CONSTRAINT "fkeycon_bank_accounts_to_users" FOREIGN KEY ("user_id") REFERENCES "users" ("id")
);

CREATE TABLE "wallets" (
	"id" BIGSERIAL,
	"address" VARCHAR,
	"status" ENUM,
	"user_id" BIGINT,
	"bank_account_id" BIGINT,
	"organization_wallet_id" BIGINT,
	"balance" BIGINT,
	"currency" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_wallets_to_wallets" FOREIGN KEY ("organization_wallet_id") REFERENCES "wallets" ("id"),
	 CONSTRAINT "fkeycon_wallets_to_currencies" FOREIGN KEY ("currency") REFERENCES "currencies" ("code"),
	 CONSTRAINT "fkeycon_wallets_to_users" FOREIGN KEY ("user_id") REFERENCES "users" ("id"),
	 CONSTRAINT "fkeycon_wallets_to_bank_accounts" FOREIGN KEY ("bank_account_id") REFERENCES "bank_accounts" ("id")
);

CREATE TABLE "payment_requests" (
	"id" BIGSERIAL,
	"from_wallet_id" BIGINT,
	"to_wallet_id" BIGINT,
	"amount" BIGINT,
	"status" ENUM,
	"created_at" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_payment_requests_to_wallets" FOREIGN KEY ("to_wallet_id") REFERENCES "wallets" ("id")
);

CREATE TABLE "transfers" (
	"id" BIGSERIAL,
	"from_wallet_id" BIGINT,
	"to_wallet_id" BIGINT,
	"amount" BIGINT,
	"created_at" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_transfers_to_wallets" FOREIGN KEY ("to_wallet_id") REFERENCES "wallets" ("id")
);

CREATE TABLE "entries" (
	"id" BIGSERIAL,
	"wallet_id" BIGINT,
	"amount" BIGINT,
	"transfer_id" BIGINT,
	"created_at" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_entries_to_wallets" FOREIGN KEY ("wallet_id") REFERENCES "wallets" ("id")
);
