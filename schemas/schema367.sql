DROP DATABASE IF EXISTS "schema367";
CREATE DATABASE "schema367";
USE "schema367";
CREATE TABLE "credit_offer" (
	"id" VARCHAR,
	"client_id" VARCHAR,
	"credit_id" VARCHAR,
	"amount" BIGINT,
	"payment_schedule" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "credit" (
	"id" SERIAL,
	"credit_name" VARCHAR,
	"credit_limit" INTEGER,
	"credit_validity" INTEGER,
	"credit_rate" INTEGER,
	"credit_start_date" DATE,
	 PRIMARY KEY ("id")
);

CREATE TABLE "clients" (
	"id" SERIAL,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"third_name" VARCHAR,
	"telephone_number" INTEGER,
	"email" VARCHAR,
	"serial_passport" INTEGER,
	"number_passport" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "bank" (
	"id" SERIAL,
	 PRIMARY KEY ("id")
);
