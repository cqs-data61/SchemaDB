DROP DATABASE IF EXISTS "schema1302";
CREATE DATABASE "schema1302";
USE "schema1302";
CREATE TABLE "quote" (
	"id" VARCHAR,
	"amount" DECIMAL,
	"currency" VARCHAR,
	"fee_amount" DECIMAL,
	"product_id" VARCHAR,
	"reference_number" VARCHAR,
	"total_amount" DECIMAL,
	 PRIMARY KEY ("id")
);

CREATE TABLE "product_config" (
	"id" INTEGER,
	"amount" DECIMAL,
	"product_id" VARCHAR,
	 PRIMARY KEY ("id")
);
