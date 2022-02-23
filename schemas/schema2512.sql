DROP DATABASE IF EXISTS "schema2512";
CREATE DATABASE "schema2512";
USE "schema2512";
CREATE TABLE "card_transactions" (
	"id" INT,
	"source" VARCHAR,
	"target" VARCHAR,
	"amount_in_kopecks" INT,
	"created" TIMESTAMP
);

CREATE TABLE "users" (
	"id" INT,
	"login" VARCHAR,
	"password" VARCHAR
);

CREATE TABLE "auth_codes" (
	"id" INT,
	"user_id" INT,
	"code" VARCHAR,
	"created" TIMESTAMP,
	 CONSTRAINT "fkeycon_auth_codes_to_users" FOREIGN KEY ("user_id") REFERENCES "users" ("id")
);

CREATE TABLE "cards" (
	"id" INT,
	"user_id" INT,
	"number" VARCHAR,
	"balance_in_kopecks" INT,
	 CONSTRAINT "fkeycon_cards_to_users" FOREIGN KEY ("user_id") REFERENCES "users" ("id")
);
