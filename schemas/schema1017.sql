DROP DATABASE IF EXISTS "schema1017";
CREATE DATABASE "schema1017";
USE "schema1017";
CREATE TABLE "ingredient" (
	"id" VARCHAR,
	"name" VARCHAR,
	"type" VARCHAR
);

CREATE TABLE "ingredient_ref" (
	"ingredient" VARCHAR,
	"taco" BIGINT,
	"taco_key" BIGINT,
	 CONSTRAINT "fkeycon_ingredient_ref_to_ingredient" FOREIGN KEY ("ingredient") REFERENCES "ingredient" ("id")
);

CREATE TABLE "taco_order" (
	"id" IDENTITY,
	"delivery_name" VARCHAR,
	"delivery_street" VARCHAR,
	"delivery_city" VARCHAR,
	"delivery_state" VARCHAR,
	"delivery_zip" VARCHAR,
	"cc_number" VARCHAR,
	"cc_expiration" VARCHAR,
	"cc_cvv" VARCHAR,
	"placed_at" TIMESTAMP
);

CREATE TABLE "taco" (
	"id" IDENTITY,
	"name" VARCHAR,
	"taco_order" BIGINT,
	"taco_order_key" BIGINT,
	"created_at" TIMESTAMP,
	 CONSTRAINT "fkeycon_taco_to_taco_order" FOREIGN KEY ("taco_order") REFERENCES "taco_order" ("id")
);
