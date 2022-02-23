DROP DATABASE IF EXISTS "schema1680";
CREATE DATABASE "schema1680";
USE "schema1680";
CREATE TABLE "users" (
	"user_id" INT,
	"username" VARCHAR,
	"password_hash" VARCHAR,
	 PRIMARY KEY ("user_id")
);

CREATE TABLE "accounts" (
	"account_id" INT,
	"user_id" INT,
	"balance" DECIMAL,
	 PRIMARY KEY ("account_id"),
	 CONSTRAINT "fk_accounts_user" FOREIGN KEY ("user_id") REFERENCES "users" ("user_id")
);

CREATE TABLE "transfer_statuses" (
	"transfer_status_id" INT,
	"transfer_status_desc" VARCHAR,
	 PRIMARY KEY ("transfer_status_id")
);

CREATE TABLE "transfer_types" (
	"transfer_type_id" INT,
	"transfer_type_desc" VARCHAR,
	 PRIMARY KEY ("transfer_type_id")
);

CREATE TABLE "transfers" (
	"transfer_id" INT,
	"transfer_type_id" INT,
	"transfer_status_id" INT,
	"account_from" INT,
	"account_to" INT,
	"amount" DECIMAL,
	 PRIMARY KEY ("transfer_id"),
	 CONSTRAINT "fk_transfers_accounts_from" FOREIGN KEY ("account_from") REFERENCES "accounts" ("account_id"),
	 CONSTRAINT "fk_transfers_transfer_statuses" FOREIGN KEY ("transfer_status_id") REFERENCES "transfer_statuses" ("transfer_status_id"),
	 CONSTRAINT "fk_transfers_transfer_types" FOREIGN KEY ("transfer_type_id") REFERENCES "transfer_types" ("transfer_type_id"),
	 CONSTRAINT "fk_transfers_accounts_to" FOREIGN KEY ("account_to") REFERENCES "accounts" ("account_id")
);
