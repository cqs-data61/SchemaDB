DROP DATABASE IF EXISTS "schema542";
CREATE DATABASE "schema542";
USE "schema542";
CREATE TABLE "ticket" (
	"id" BIGINT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	"status" INT,
	"price" DECIMAL,
	"count" INT,
	"payment_date" DATETIME,
	"account_id" BIGINT,
	"event_id" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "event" (
	"id" BIGINT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	"status" INT,
	"price" DECIMAL,
	"name" VARCHAR,
	"website" VARCHAR,
	"event_date" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "balance_transaction" (
	"id" BIGINT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	"status" INT,
	"amount" DECIMAL,
	"balance_id" BIGINT,
	"type" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "balance" (
	"id" BIGINT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	"status" INT,
	"account_id" BIGINT,
	"amount" DECIMAL,
	 PRIMARY KEY ("id")
);

CREATE TABLE "payment" (
	"id" BIGINT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	"status" INT,
	"state" VARCHAR,
	"price" DECIMAL,
	"reference_code" VARCHAR,
	"account_id" BIGINT,
	 PRIMARY KEY ("id")
);
