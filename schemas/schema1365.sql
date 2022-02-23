DROP DATABASE IF EXISTS "schema1365";
CREATE DATABASE "schema1365";
USE "schema1365";
CREATE TABLE "merchant_category" (
	"merchant_category_id" INT,
	"category_name" VARCHAR,
	 PRIMARY KEY ("merchant_category_id")
);

CREATE TABLE "merchant" (
	"merchant_id" INT,
	"name" VARCHAR,
	"merchant_category_id" INT,
	 PRIMARY KEY ("merchant_id"),
	 CONSTRAINT "fkeycon_merchant_to_merchant_category" FOREIGN KEY ("merchant_category_id") REFERENCES "merchant_category" ("merchant_category_id")
);

CREATE TABLE "transaction" (
	"transaction_id" INT,
	"date" TIMESTAMP,
	"amount" FLOAT4,
	"card" VARCHAR,
	"merchant_id" INT,
	 PRIMARY KEY ("transaction_id"),
	 CONSTRAINT "fkeycon_transaction_to_merchant" FOREIGN KEY ("merchant_id") REFERENCES "merchant" ("merchant_id")
);

CREATE TABLE "cardholder" (
	"cardholder_id" INT,
	"name" VARCHAR,
	 PRIMARY KEY ("cardholder_id")
);

CREATE TABLE "credit_card" (
	"card" VARCHAR,
	"cardholder_id" INT,
	"card_id" SERIAL,
	 PRIMARY KEY ("card_id"),
	 CONSTRAINT "fkeycon_credit_card_to_cardholder" FOREIGN KEY ("cardholder_id") REFERENCES "cardholder" ("cardholder_id")
);
