DROP DATABASE IF EXISTS "schema2102";
CREATE DATABASE "schema2102";
USE "schema2102";
CREATE TABLE "account" (
	"id" VARCHAR,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "wallet" (
	"id" VARCHAR,
	"balance" NUMERIC,
	"account_id" VARCHAR,
	"status" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_customer" FOREIGN KEY ("account_id") REFERENCES "account" ("id")
);
