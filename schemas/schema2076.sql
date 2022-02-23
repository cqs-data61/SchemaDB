DROP DATABASE IF EXISTS "schema2076";
CREATE DATABASE "schema2076";
USE "schema2076";
CREATE TABLE "account" (
	"id" INTEGER,
	"name" VARCHAR,
	"email" VARCHAR,
	"password" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "account_authority" (
	"account_id" INTEGER,
	"authority_name" VARCHAR,
	 PRIMARY KEY ("account_id","authority_name"),
	 CONSTRAINT "fk_account_id" FOREIGN KEY ("account_id") REFERENCES "account" ("id")
);

CREATE TABLE "customer" (
	"id" INTEGER,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"email" VARCHAR,
	"birthday" DATE
);
