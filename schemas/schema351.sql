DROP DATABASE IF EXISTS "schema351";
CREATE DATABASE "schema351";
USE "schema351";
CREATE TABLE "customer_info" (
	"user_id" INT,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"national_id" VARCHAR,
	"birth_date" DATE,
	"email" VARCHAR,
	"address" VARCHAR,
	 PRIMARY KEY ("user_id")
);

CREATE TABLE "otp_info" (
	"id" INT,
	"otp_id" VARCHAR,
	"created_date" TIMESTAMP,
	"user_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_otp_info_to_customer_info" FOREIGN KEY ("user_id") REFERENCES "customer_info" ("user_id")
);

CREATE TABLE "currency" (
	"currency_id" INT,
	"currency_name" VARCHAR,
	 PRIMARY KEY ("currency_id")
);

CREATE TABLE "transactions" (
	"transaction_id" INT,
	"transaction_amount" FLOAT,
	"transaction_date" TIMESTAMP,
	"utility_provider_id" INT,
	"pay_order_id" INT,
	"acc_number" INT,
	"currency_id" INT,
	 CONSTRAINT "fkeycon_transactions_to_currency" FOREIGN KEY ("currency_id") REFERENCES "currency" ("currency_id")
);

CREATE TABLE "account" (
	"acc_number" INT,
	"created_date" DATE,
	"current_balance" FLOAT,
	"user_id" INT,
	"account_type_id" INT,
	"currency_id" INT,
	"account_status" INT,
	 CONSTRAINT "fkeycon_account_to_currency" FOREIGN KEY ("currency_id") REFERENCES "currency" ("currency_id")
);

CREATE TABLE "pay_orders" (
	"pay_order_id" INT,
	"transaction_amount" FLOAT,
	"transaction_date" INT,
	"acc_number" INT,
	"to_acc_number" INT,
	"frequency" INT,
	 CONSTRAINT "fkeycon_pay_orders_to_account" FOREIGN KEY ("acc_number") REFERENCES "account" ("acc_number")
);

CREATE TABLE "utility_provider" (
	"utility_provider_id" INT,
	"utlity_provider_name" VARCHAR,
	 PRIMARY KEY ("utility_provider_id")
);

CREATE TABLE "account_type" (
	"account_type_id" INT,
	"account_name" VARCHAR,
	"interest_rate" FLOAT,
	 PRIMARY KEY ("account_type_id")
);
