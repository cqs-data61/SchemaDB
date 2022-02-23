DROP DATABASE IF EXISTS "schema1848";
CREATE DATABASE "schema1848";
USE "schema1848";
CREATE TABLE "forex_trade_deal" (
	"id" BIGINT,
	"base_currency" VARCHAR,
	"base_currency_amount" DECIMAL,
	"counter_currency" VARCHAR,
	"deal_ref" VARCHAR,
	"rate" DOUBLE,
	"timestamp" TIMESTAMP,
	"customer_id" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "forex_rate_booking" (
	"id" BIGINT,
	"base_currency" VARCHAR,
	"base_currency_amount" DECIMAL,
	"booking_ref" VARCHAR,
	"counter_currency" VARCHAR,
	"expiry_time" TIMESTAMP,
	"rate" DOUBLE,
	"timestamp" TIMESTAMP,
	"customer_id" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "customer" (
	"id" BIGINT,
	"name" VARCHAR,
	"tier" INTEGER,
	 PRIMARY KEY ("id")
);
