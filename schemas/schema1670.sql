DROP DATABASE IF EXISTS "schema1670";
CREATE DATABASE "schema1670";
USE "schema1670";
CREATE TABLE "taco_order" (
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

CREATE TABLE "taco" (
	"id" IDENTITY,
	"name" VARCHAR,
	"createdat" TIMESTAMP
);

CREATE TABLE "taco_order_tacos" (
	"tacoorder" BIGINT,
	"taco" BIGINT,
	 CONSTRAINT "fkeycon_taco_order_tacos_to_taco" FOREIGN KEY ("taco") REFERENCES "taco" ("id"),
	 CONSTRAINT "fkeycon_taco_order_tacos_to_taco_order" FOREIGN KEY ("tacoorder") REFERENCES "taco_order" ("id")
);

CREATE TABLE "ingredient" (
	"id" VARCHAR,
	"name" VARCHAR,
	"type" VARCHAR
);

CREATE TABLE "taco_ingredients" (
	"taco" BIGINT,
	"ingredient" VARCHAR,
	 CONSTRAINT "fkeycon_taco_ingredients_to_taco" FOREIGN KEY ("taco") REFERENCES "taco" ("id"),
	 CONSTRAINT "fkeycon_taco_ingredients_to_ingredient" FOREIGN KEY ("ingredient") REFERENCES "ingredient" ("id")
);
