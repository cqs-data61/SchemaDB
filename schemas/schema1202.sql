DROP DATABASE IF EXISTS "schema1202";
CREATE DATABASE "schema1202";
USE "schema1202";
CREATE TABLE "dumpling_order" (
	"id" IDENTITY,
	"deliveryname" VARCHAR,
	"deliverystreet" VARCHAR,
	"deliverycity" VARCHAR,
	"deliverystate" VARCHAR,
	"deliveryzip" VARCHAR,
	"ccnumber" VARCHAR,
	"ccexpiration" VARCHAR,
	"cccvv" VARCHAR,
	"placedat" TIMESTAMP
);

CREATE TABLE "dumpling" (
	"id" IDENTITY,
	"name" VARCHAR,
	"createdat" TIMESTAMP
);

CREATE TABLE "dumpling_order_dumplings" (
	"dumplingorder" BIGINT,
	"dumpling" BIGINT,
	 CONSTRAINT "fkeycon_dumpling_order_dumplings_to_dumpling_order" FOREIGN KEY ("dumplingorder") REFERENCES "dumpling_order" ("id"),
	 CONSTRAINT "fkeycon_dumpling_order_dumplings_to_dumpling" FOREIGN KEY ("dumpling") REFERENCES "dumpling" ("id")
);

CREATE TABLE "ingredient" (
	"id" VARCHAR,
	"name" VARCHAR,
	"type" VARCHAR
);

CREATE TABLE "dumpling_ingredients" (
	"dumpling" BIGINT,
	"ingredient" VARCHAR,
	 CONSTRAINT "fkeycon_dumpling_ingredients_to_dumpling" FOREIGN KEY ("dumpling") REFERENCES "dumpling" ("id"),
	 CONSTRAINT "fkeycon_dumpling_ingredients_to_ingredient" FOREIGN KEY ("ingredient") REFERENCES "ingredient" ("id")
);
