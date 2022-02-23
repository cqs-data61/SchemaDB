DROP DATABASE IF EXISTS "schema364";
CREATE DATABASE "schema364";
USE "schema364";
CREATE TABLE "seed_category" (
	"main_category" TEXT,
	"subcategory" TEXT,
	 PRIMARY KEY ("main_category","subcategory")
);

CREATE TABLE "user_group" (
	"name" TEXT,
	 PRIMARY KEY ("name")
);

CREATE TABLE "user_account" (
	"id" TEXT,
	"created_at" BIGINT,
	"updated_at" BIGINT,
	"name" TEXT,
	"email" TEXT,
	"password" TEXT,
	"phone_number" TEXT,
	"user_group" TEXT,
	"is_admin" BOOLEAN,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_user_account_to_user_group" FOREIGN KEY ("user_group") REFERENCES "user_group" ("name")
);

CREATE TABLE "offering" (
	"id" TEXT,
	"created_at" BIGINT,
	"updated_at" BIGINT,
	"user_account_id" TEXT,
	"category" TEXT,
	"subcategory" TEXT,
	"quantity_kg" FLOAT,
	"price_per_kg_cfa_cents" INTEGER,
	"audio_asset" TEXT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_offering_to_seed_category" FOREIGN KEY ("category","subcategory") REFERENCES "seed_category" ("main_category","subcategory"),
	 CONSTRAINT "fkeycon_offering_to_user_account" FOREIGN KEY ("user_account_id") REFERENCES "user_account" ("id")
);
