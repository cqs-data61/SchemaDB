DROP DATABASE IF EXISTS "schema2186";
CREATE DATABASE "schema2186";
USE "schema2186";
CREATE TABLE "transaction_types" (
	"id" SERIAL,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "categories" (
	"id" SERIAL,
	"user_id" INT,
	"type_id" INT,
	"name" VARCHAR,
	"icon" VARCHAR,
	"color" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "transactions" (
	"id" SERIAL,
	"account_id" INT,
	"user_id" INT,
	"currency_id" INT,
	"category_id" INT,
	"transfer_account_id" INT,
	"amount" FLOAT,
	"description" VARCHAR,
	"type" VARCHAR,
	"location" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "account_types" (
	"id" SERIAL,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "account_users" (
	"id" SERIAL,
	"account_id" INT,
	"user_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "accounts" (
	"id" SERIAL,
	"user_id" INT,
	"type_id" INT,
	"currency_id" INT,
	"name" VARCHAR,
	"initial_amount" FLOAT,
	"icon" VARCHAR,
	"color" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" BOOLEAN,
	"deleted_at" BOOLEAN,
	 PRIMARY KEY ("id")
);

CREATE TABLE "currencies" (
	"id" SERIAL,
	"name" VARCHAR,
	"symbol" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"id" SERIAL,
	"email" VARCHAR,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"password" VARCHAR,
	"password_reset" VARCHAR,
	"active" BOOLEAN,
	"created_at" TIMESTAMP,
	"updated_at" BOOLEAN,
	"deleted_at" BOOLEAN,
	 PRIMARY KEY ("id")
);
