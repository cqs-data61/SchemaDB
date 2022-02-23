DROP DATABASE IF EXISTS "schema1631";
CREATE DATABASE "schema1631";
USE "schema1631";
CREATE TABLE "db_cards" (
	"id" BIGINT,
	"digits" VARCHAR,
	"amount" INTEGER,
	"currency" VARCHAR,
	"exp_date" VARCHAR,
	"customer_id" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "db_customers" (
	"id" BIGINT,
	"name" VARCHAR,
	"surname" VARCHAR,
	"country" VARCHAR,
	"email" VARCHAR,
	"password" VARCHAR,
	 PRIMARY KEY ("id")
);
