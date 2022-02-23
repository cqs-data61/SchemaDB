DROP DATABASE IF EXISTS "schema262";
CREATE DATABASE "schema262";
USE "schema262";
CREATE TABLE "users" (
	"id" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	"logged_out_at" TIMESTAMP,
	"email" VARCHAR,
	"password" VARCHAR,
	"role" VARCHAR,
	"state" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "card_transactions" (
	"id" INT,
	"created_at" TIMESTAMP,
	"datetime" TIMESTAMP,
	"amount" BIGINT,
	"currency_scale" TINYINT,
	"currency_code" VARCHAR,
	"reference" VARCHAR,
	"merchant_name" VARCHAR,
	"merchant_city" VARCHAR,
	"merchant_country_code" VARCHAR,
	"merchant_country_name" VARCHAR,
	"merchant_category_code" VARCHAR,
	"merchant_category_name" VARCHAR,
	"user_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_card_transactions_to_users" FOREIGN KEY ("user_id") REFERENCES "users" ("id")
);

CREATE TABLE "contacts" (
	"id" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	"name" VARCHAR,
	"phone" VARCHAR,
	"user_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_contacts_to_users" FOREIGN KEY ("user_id") REFERENCES "users" ("id")
);

CREATE TABLE "sign_up_confirmations" (
	"id" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	"nonce" VARCHAR,
	"user_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_sign_up_confirmations_to_users" FOREIGN KEY ("user_id") REFERENCES "users" ("id")
);
