DROP DATABASE IF EXISTS "schema1273";
CREATE DATABASE "schema1273";
USE "schema1273";
CREATE TABLE "contact_messages" (
	"contact_id" VARCHAR,
	"contact_name" VARCHAR,
	"contact_email" VARCHAR,
	"subject" VARCHAR,
	"message" VARCHAR,
	"create_dt" DATE,
	 PRIMARY KEY ("contact_id")
);

CREATE TABLE "notice_details" (
	"notice_id" INT,
	"notice_summary" VARCHAR,
	"notice_details" VARCHAR,
	"notic_beg_dt" DATE,
	"notic_end_dt" DATE,
	"create_dt" DATE,
	"update_dt" DATE,
	 PRIMARY KEY ("notice_id")
);

CREATE TABLE "customer" (
	"customer_id" INT,
	"name" VARCHAR,
	"email" VARCHAR,
	"mobile_number" VARCHAR,
	"pwd" VARCHAR,
	"role" VARCHAR,
	"create_dt" DATE,
	 PRIMARY KEY ("customer_id")
);

CREATE TABLE "cards" (
	"card_id" INT,
	"card_number" VARCHAR,
	"customer_id" INT,
	"card_type" VARCHAR,
	"total_limit" INT,
	"amount_used" INT,
	"available_amount" INT,
	"create_dt" DATE,
	 PRIMARY KEY ("card_id"),
	 CONSTRAINT "card_customer_ibfk_1" FOREIGN KEY ("customer_id") REFERENCES "customer" ("customer_id")
);

CREATE TABLE "loans" (
	"loan_number" INT,
	"customer_id" INT,
	"start_dt" DATE,
	"loan_type" VARCHAR,
	"total_loan" INT,
	"amount_paid" INT,
	"outstanding_amount" INT,
	"create_dt" DATE,
	 PRIMARY KEY ("loan_number"),
	 CONSTRAINT "loan_customer_ibfk_1" FOREIGN KEY ("customer_id") REFERENCES "customer" ("customer_id")
);

CREATE TABLE "accounts" (
	"customer_id" INT,
	"account_number" BIGINT,
	"account_type" VARCHAR,
	"branch_address" VARCHAR,
	"create_dt" DATE,
	 PRIMARY KEY ("account_number"),
	 CONSTRAINT "customer_ibfk_1" FOREIGN KEY ("customer_id") REFERENCES "customer" ("customer_id")
);

CREATE TABLE "account_transactions" (
	"transaction_id" VARCHAR,
	"account_number" BIGINT,
	"customer_id" INT,
	"transaction_dt" DATE,
	"transaction_summary" VARCHAR,
	"transaction_type" VARCHAR,
	"transaction_amt" INT,
	"closing_balance" INT,
	"create_dt" DATE,
	 PRIMARY KEY ("transaction_id"),
	 CONSTRAINT "acct_user_ibfk_1" FOREIGN KEY ("customer_id") REFERENCES "customer" ("customer_id"),
	 CONSTRAINT "accounts_ibfk_2" FOREIGN KEY ("account_number") REFERENCES "accounts" ("account_number")
);

CREATE TABLE "authorities" (
	"id" INT,
	"username" VARCHAR,
	"authority" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"id" INT,
	"username" VARCHAR,
	"password" VARCHAR,
	"enabled" INT,
	 PRIMARY KEY ("id")
);
