DROP DATABASE IF EXISTS "schema606";
CREATE DATABASE "schema606";
USE "schema606";
CREATE TABLE "recipe_request" (
	"id" INT,
	"user_id" INTEGER,
	"drug_dosage_id" INTEGER,
	"expiration_date" DATE,
	"request_status" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "user_order" (
	"id" INT,
	"user_id" INTEGER,
	"dosage_id" INTEGER,
	"quantity" INTEGER,
	"order_time" TIMESTAMP,
	"order_cost" NUMERIC,
	"order_status" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "recipe" (
	"id" INT,
	"user_id" INTEGER,
	"dosage_id" INTEGER,
	"expiration_date" DATE,
	 PRIMARY KEY ("id")
);

CREATE TABLE "drug_dosage" (
	"id" INT,
	"drug_id" INTEGER,
	"dosage" CHARACTER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "drug" (
	"id" INT,
	"name" CHARACTER,
	"composition" CHARACTER,
	"indications" CHARACTER,
	"mode_of_application" CHARACTER,
	"contraindications" CHARACTER,
	"recipe_needed" BOOLEAN,
	"category_id" INTEGER,
	"storage_quantity" INTEGER,
	"price" NUMERIC,
	 PRIMARY KEY ("id")
);

CREATE TABLE "category" (
	"id" INT,
	"category_name" CHARACTER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "user_account" (
	"id" INT,
	"login" CHARACTER,
	"password" CHARACTER,
	"role" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "payment_data" (
	"id" INT,
	"user_id" INTEGER,
	"balance" NUMERIC,
	"card_number" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "user_data" (
	"id" INT,
	"user_id" INTEGER,
	"first_name" CHARACTER,
	"last_name" CHARACTER,
	"date_of_birth" DATE,
	"email" CHARACTER,
	 PRIMARY KEY ("id")
);
