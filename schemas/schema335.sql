DROP DATABASE IF EXISTS "schema335";
CREATE DATABASE "schema335";
USE "schema335";
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
	"placedat" TIMESTAMP
);

CREATE TABLE "taco_ingredients" (
	"taco" BIGINT,
	"ingredient" VARCHAR
);

CREATE TABLE "taco" (
	"id" BIGINT,
	"name" VARCHAR,
	"createdat" TIMESTAMP
);

CREATE TABLE "ingredient" (
	"id" VARCHAR,
	"name" VARCHAR,
	"type" VARCHAR
);
