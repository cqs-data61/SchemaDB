DROP DATABASE IF EXISTS "schema1310";
CREATE DATABASE "schema1310";
USE "schema1310";
CREATE TABLE "customers" (
	"id" INT,
	"name" VARCHAR,
	"middlename" VARCHAR,
	"lastname" VARCHAR,
	"becamecustomer" DATE,
	 PRIMARY KEY ("id")
);

CREATE TABLE "accounts" (
	"id" INT,
	"balance" NUMERIC,
	"type" VARCHAR,
	"customerid" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_customer" FOREIGN KEY ("customerid") REFERENCES "customers" ("id")
);
