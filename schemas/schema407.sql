DROP DATABASE IF EXISTS "schema407";
CREATE DATABASE "schema407";
USE "schema407";
CREATE TABLE "taco_order_tacos" (
	"tacoorder" BIGINT,
	"taco" BIGINT
);

CREATE TABLE "taco_order" (
	"id" BIGINT,
	"deliveryname" VARCHAR,
	"deliverystreet" VARCHAR,
	"deliverycity" VARCHAR,
	"deliverystate" VARCHAR,
	"deliveryzip" VARCHAR,
	"ccnumber" VARCHAR,
	"ccexpiration" VARCHAR,
	"cccvv" VARCHAR,
	"placeat" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "taco_ingredients" (
	"taco" BIGINT,
	"ingredient" VARCHAR
);

CREATE TABLE "taco" (
	"id" BIGINT,
	"name" VARCHAR,
	"createat" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "ingredient" (
	"id" VARCHAR,
	"name" VARCHAR,
	"type" VARCHAR
);
