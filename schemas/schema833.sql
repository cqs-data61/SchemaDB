DROP DATABASE IF EXISTS "schema833";
CREATE DATABASE "schema833";
USE "schema833";
CREATE TABLE "user_token" (
	"id" SERIAL,
	"user_id" INTEGER,
	"token" VARCHAR,
	"created" TIMESTAMP,
	"updated" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "transaction" (
	"id" SERIAL,
	"transaction_id" VARCHAR,
	"user_id" INTEGER,
	"currency" VARCHAR,
	"amount" NUMERIC,
	"transaction_type" INTEGER,
	"status" INTEGER,
	"provider_ref_id" VARCHAR,
	"processing_fee" NUMERIC,
	"reason" VARCHAR,
	"created" TIMESTAMP,
	"updated" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "merchant_wallet" (
	"id" SERIAL,
	"user_id" INTEGER,
	"currency" VARCHAR,
	"amount" NUMERIC,
	"created" TIMESTAMP,
	"updated" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "merchant_payment" (
	"id" SERIAL,
	"user_id" INTEGER,
	"amount" NUMERIC,
	"provider" INTEGER,
	"client" VARCHAR,
	"reason" VARCHAR,
	"day" INTEGER,
	"month" INTEGER,
	"hour" INTEGER,
	"created" TIMESTAMP,
	"updated" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "merchant" (
	"id" SERIAL,
	"name" VARCHAR,
	"account_number" VARCHAR,
	"email_address" VARCHAR,
	"account_status" INTEGER,
	"provider" INTEGER,
	"password" VARCHAR,
	"created" TIMESTAMP,
	"updated" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "auth" (
	"id" SERIAL,
	"api_key" VARCHAR,
	"auth_env" INTEGER,
	 PRIMARY KEY ("id")
);
