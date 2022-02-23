DROP DATABASE IF EXISTS "schema2240";
CREATE DATABASE "schema2240";
USE "schema2240";
CREATE TABLE "card_transactions" (
	"id" CHAR,
	"source" VARCHAR,
	"target" VARCHAR,
	"amount_in_kopecks" INT,
	"created" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"id" CHAR,
	"login" VARCHAR,
	"password" VARCHAR,
	"status" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "auth_codes" (
	"id" CHAR,
	"user_id" CHAR,
	"code" VARCHAR,
	"created" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_auth_codes_to_users" FOREIGN KEY ("user_id") REFERENCES "users" ("id")
);

CREATE TABLE "cards" (
	"id" CHAR,
	"user_id" CHAR,
	"number" VARCHAR,
	"balance_in_kopecks" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_cards_to_users" FOREIGN KEY ("user_id") REFERENCES "users" ("id")
);
