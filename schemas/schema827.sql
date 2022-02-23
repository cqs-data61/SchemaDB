DROP DATABASE IF EXISTS "schema827";
CREATE DATABASE "schema827";
USE "schema827";
CREATE TABLE "reservation" (
	"id" BIGINT,
	"booking_date" TIMESTAMP,
	"cost" BIGINT,
	"successful" BOOLEAN,
	"transaction_number" VARCHAR,
	"user_id" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "initial_credit_limit" (
	"id" BIGINT,
	"amount" BIGINT,
	"user_id" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "user" (
	"id" BIGINT,
	"email" VARCHAR,
	"family" VARCHAR,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);
