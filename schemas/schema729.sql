DROP DATABASE IF EXISTS "schema729";
CREATE DATABASE "schema729";
USE "schema729";
CREATE TABLE "user" (
	"id" BIGINT,
	"username" VARCHAR,
	"password" VARCHAR,
	"address" VARCHAR,
	"city" VARCHAR
);

CREATE TABLE "taco_order" (
	"id" BIGINT,
	"delivery_name" VARCHAR,
	"street" VARCHAR,
	"address" VARCHAR,
	"city" VARCHAR,
	"cc_number" VARCHAR,
	"cc_expiration" VARCHAR,
	"cc_ccv" VARCHAR,
	"placed_at" TIMESTAMP,
	"user_id" BIGINT,
	 CONSTRAINT "fkeycon_taco_order_to_user" FOREIGN KEY ("user_id") REFERENCES "user" ("id")
);

CREATE TABLE "taco" (
	"id" BIGINT,
	"name" VARCHAR,
	"created_at" TIMESTAMP
);

CREATE TABLE "taco_order_tacos" (
	"taco_order_id" BIGINT,
	"taco_id" BIGINT,
	 PRIMARY KEY ("taco_order_id","taco_id"),
	 CONSTRAINT "fkeycon_taco_order_tacos_to_taco" FOREIGN KEY ("taco_id") REFERENCES "taco" ("id"),
	 CONSTRAINT "fkeycon_taco_order_tacos_to_taco_order" FOREIGN KEY ("taco_order_id") REFERENCES "taco_order" ("id")
);

CREATE TABLE "ingredient" (
	"id" VARCHAR,
	"name" VARCHAR,
	"type" VARCHAR
);

CREATE TABLE "taco_ingredients" (
	"taco_id" BIGINT,
	"ingredients_id" VARCHAR,
	 PRIMARY KEY ("taco_id","ingredients_id"),
	 CONSTRAINT "fkeycon_taco_ingredients_to_taco" FOREIGN KEY ("taco_id") REFERENCES "taco" ("id"),
	 CONSTRAINT "fkeycon_taco_ingredients_to_ingredient" FOREIGN KEY ("ingredients_id") REFERENCES "ingredient" ("id")
);
