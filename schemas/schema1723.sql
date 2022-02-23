DROP DATABASE IF EXISTS "schema1723";
CREATE DATABASE "schema1723";
USE "schema1723";
CREATE TABLE "message" (
	"id" SERIAL,
	"merchant_id" BIGINT,
	"contact_id" BIGINT,
	"timestamp" TIMESTAMP,
	"type" VARCHAR,
	"text" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "placeholder" (
	"id" SERIAL,
	"merchant_id" BIGINT,
	"key" VARCHAR,
	"value" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "contact" (
	"id" SERIAL,
	"merchant_id" BIGINT,
	"name" VARCHAR,
	"email" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "merchant" (
	"id" SERIAL,
	"name" VARCHAR,
	"email" VARCHAR,
	 PRIMARY KEY ("id")
);
