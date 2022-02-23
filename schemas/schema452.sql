DROP DATABASE IF EXISTS "schema452";
CREATE DATABASE "schema452";
USE "schema452";
CREATE TABLE "item" (
	"name" VARCHAR,
	"id" BIGINT,
	"amount" BIGINT,
	"creation_date" TIMESTAMP,
	"description" VARCHAR,
	"item_type" INTEGER,
	"photo_id" BIGINT,
	"price" DECIMAL,
	 PRIMARY KEY ("id")
);

CREATE TABLE "item_photo" (
	"id" BIGINT,
	"item_id" BIGINT,
	"photo" VARBINARY,
	"name" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "ukh8ugq8wukffh0bpp01ct2p49t" FOREIGN KEY ("item_id") REFERENCES "item" ("id")
);

CREATE TABLE "basket" (
	"id" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "basket_items" (
	"basket_id" BIGINT,
	"items_id" BIGINT,
	 CONSTRAINT "fkh8ugq8wukffh0bpp01ct2p49t" FOREIGN KEY ("basket_id") REFERENCES "basket" ("id"),
	 CONSTRAINT "fk4q9gnl10yamqxew6rs2wdk0qq" FOREIGN KEY ("items_id") REFERENCES "item" ("id")
);
