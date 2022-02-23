DROP DATABASE IF EXISTS "schema898";
CREATE DATABASE "schema898";
USE "schema898";
CREATE TABLE "customer_account" (
	"customer_customer_id" BIGINT,
	"account_account_id" BIGINT
);

CREATE TABLE "transaction" (
	"transaction_id" BIGINT,
	"account_account_id" BIGINT,
	"description" VARCHAR,
	"credit" FLOAT,
	"debit" FLOAT,
	"timestamp" TIMESTAMP,
	 PRIMARY KEY ("transaction_id")
);

CREATE TABLE "account" (
	"account_id" BIGINT,
	"balance" FLOAT,
	"last_statement_date" TIMESTAMP,
	 PRIMARY KEY ("account_id")
);

CREATE TABLE "customer" (
	"customer_id" BIGINT,
	"first_name" VARCHAR,
	"middle_name" VARCHAR,
	"last_name" VARCHAR,
	"address1" VARCHAR,
	"address2" VARCHAR,
	"city" VARCHAR,
	"state" VARCHAR,
	"postal_code" CHAR,
	"ssn" VARCHAR,
	"email_address" VARCHAR,
	"home_phone" VARCHAR,
	"cell_phone" VARCHAR,
	"work_phone" VARCHAR,
	"notification_pref" CHAR,
	 PRIMARY KEY ("customer_id")
);
