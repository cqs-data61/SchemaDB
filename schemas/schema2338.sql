DROP DATABASE IF EXISTS "schema2338";
CREATE DATABASE "schema2338";
USE "schema2338";
CREATE TABLE "merchant_category" (
	"id" INT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "merchant" (
	"id" INT,
	"name" VARCHAR,
	"id_merchant_category" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_merchant_to_merchant_category" FOREIGN KEY ("id_merchant_category") REFERENCES "merchant_category" ("id")
);

CREATE TABLE "card_holder" (
	"id" INT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "credit_card" (
	"card" VARCHAR,
	"id_card_holder" INT,
	 PRIMARY KEY ("card"),
	 CONSTRAINT "fkeycon_credit_card_to_card_holder" FOREIGN KEY ("id_card_holder") REFERENCES "card_holder" ("id")
);

CREATE TABLE "transaction" (
	"id" INT,
	"date" TIMESTAMP,
	"amount" FLOAT,
	"card" VARCHAR,
	"id_merchant" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_transaction_to_merchant" FOREIGN KEY ("id_merchant") REFERENCES "merchant" ("id"),
	 CONSTRAINT "fkeycon_transaction_to_credit_card" FOREIGN KEY ("card") REFERENCES "credit_card" ("card")
);
