DROP DATABASE IF EXISTS "schema2043";
CREATE DATABASE "schema2043";
USE "schema2043";
CREATE TABLE "account" (
	"id" NUMBER,
	"name" VARCHAR,
	"balance" NUMBER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "ops" (
	"id" NUMBER,
	"amount" NUMBER,
	"balance" NUMBER,
	"date" TIMESTAMP,
	"account_id" NUMBER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_account" FOREIGN KEY ("account_id") REFERENCES "account" ("id")
);
