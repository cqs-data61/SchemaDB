DROP DATABASE IF EXISTS "schema2495";
CREATE DATABASE "schema2495";
USE "schema2495";
CREATE TABLE "item" (
	"id" INT,
	"id" INT,
	"base_price" MONEY,
	"currency" VARCHAR,
	"name" VARCHAR,
	"imageurl" VARCHAR,
	"complexity" DOUBLE PRECISION,
	"configuration_id" INT,
	"parent_group" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "basket" (
	"id" SERIAL,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "items_basket" (
	"item_id" INT,
	"basket_id" INT,
	"id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "group" FOREIGN KEY ("item_id") REFERENCES "basket" ("id"),
	 CONSTRAINT "item" FOREIGN KEY ("basket_id") REFERENCES "item" ("id")
);

CREATE TABLE "configuration" (
	"id" SERIAL,
	"resolution" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "group" (
	"id" INT,
	"name" VARCHAR,
	"parent" INT,
	"id" SERIAL,
	 PRIMARY KEY ("id")
);
