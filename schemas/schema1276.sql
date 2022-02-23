DROP DATABASE IF EXISTS "schema1276";
CREATE DATABASE "schema1276";
USE "schema1276";
CREATE TABLE "uuid_map" (
	"id" INTEGER,
	"uuid" VARCHAR
);

CREATE TABLE "payment_timetable" (
	"payment_timetable_id" VARCHAR,
	"credit_offer_id" VARCHAR,
	"payment_date" DATE,
	"payment_amount" INTEGER,
	"repayment_amount" INTEGER,
	"percent_repayment_amount" INTEGER,
	 PRIMARY KEY ("payment_timetable_id")
);

CREATE TABLE "bank" (
	"bank_id" VARCHAR,
	"name" VARCHAR
);

CREATE TABLE "credit" (
	"credit_id" VARCHAR,
	"bank_id" VARCHAR,
	"type" VARCHAR,
	"limit" INTEGER,
	"percent" INTEGER
);

CREATE TABLE "client" (
	"client_id" VARCHAR,
	"name" VARCHAR,
	"email" VARCHAR,
	"passport" VARCHAR,
	"bank_id" VARCHAR
);

CREATE TABLE "credit_offer" (
	"credit_offer_id" VARCHAR,
	"client_id" VARCHAR,
	"credit_id" VARCHAR,
	"bank_id" VARCHAR,
	"amount" INTEGER,
	"months_to_pay" INTEGER,
	"balance" INTEGER,
	 CONSTRAINT "fkeycon_credit_offer_to_bank" FOREIGN KEY ("bank_id") REFERENCES "bank" ("bank_id"),
	 CONSTRAINT "fkeycon_credit_offer_to_client" FOREIGN KEY ("client_id") REFERENCES "client" ("client_id"),
	 CONSTRAINT "fkeycon_credit_offer_to_credit" FOREIGN KEY ("credit_id") REFERENCES "credit" ("credit_id")
);
