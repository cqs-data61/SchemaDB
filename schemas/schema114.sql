DROP DATABASE IF EXISTS "schema114";
CREATE DATABASE "schema114";
USE "schema114";
CREATE TABLE "basket" (
	"id" SERIAL,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "configuration" (
	"id" SERIAL,
	"resolution" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "group" (
	"id" INT,
	"name" VARCHAR,
	"parentdto" INT,
	"id" SERIAL,
	 PRIMARY KEY ("id")
);

CREATE TABLE "item" (
	"id" INT,
	"id" INT,
	"name" VARCHAR,
	"base_price" MONEY,
	"currency" VARCHAR,
	"imageurl" VARCHAR,
	"complexity" DOUBLE PRECISION,
	"configuration_id" INT,
	"parent_group" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_item_to_group" FOREIGN KEY ("id") REFERENCES "group" ("id")
);

CREATE TABLE "items_baskets" (
	"item_id" INT,
	"basket_id" INT,
	"id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "group" FOREIGN KEY ("item_id") REFERENCES "basket" ("id"),
	 CONSTRAINT "item" FOREIGN KEY ("basket_id") REFERENCES "item" ("id")
);
