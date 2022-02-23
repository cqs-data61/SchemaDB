DROP DATABASE IF EXISTS "schema1288";
CREATE DATABASE "schema1288";
USE "schema1288";
CREATE TABLE "payments" (
	"payment_id" VARCHAR,
	"account_id" INTEGER,
	"payment_type" VARCHAR,
	"credit_card" VARCHAR,
	"amount" NUMERIC,
	"created_on" TIMESTAMP,
	 PRIMARY KEY ("payment_id")
);

CREATE TABLE "accounts" (
	"account_id" SERIAL,
	"name" VARCHAR,
	"email" VARCHAR,
	"birthdate" DATE,
	"last_payment_date" TIMESTAMP,
	"created_on" TIMESTAMP,
	 PRIMARY KEY ("account_id")
);
