DROP DATABASE IF EXISTS "schema684";
CREATE DATABASE "schema684";
USE "schema684";
CREATE TABLE "transaction" (
	"id" SERIAL,
	"date" TIMESTAMP,
	"description" VARCHAR,
	"number" VARCHAR,
	"amount" DOUBLE PRECISION,
	"availablebalance" DOUBLE PRECISION,
	 PRIMARY KEY ("id")
);

CREATE TABLE "transfer" (
	"id" SERIAL,
	"fromaccount" VARCHAR,
	"toaccount" VARCHAR,
	"description" VARCHAR,
	"amount" DOUBLE PRECISION,
	"fee" DOUBLE PRECISION,
	"username" VARCHAR,
	"date" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "creditaccount" (
	"id" INT,
	"number" VARCHAR,
	"username" VARCHAR,
	"description" VARCHAR,
	"availablebalance" DOUBLE PRECISION,
	"cashaccountid" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "cashaccount" (
	"id" INT,
	"number" VARCHAR,
	"username" VARCHAR,
	"availablebalance" DOUBLE PRECISION,
	"description" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "account" (
	"username" VARCHAR,
	"name" VARCHAR,
	"surname" VARCHAR,
	"password" VARCHAR,
	 PRIMARY KEY ("username")
);
