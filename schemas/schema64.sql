DROP DATABASE IF EXISTS "schema64";
CREATE DATABASE "schema64";
USE "schema64";
CREATE TABLE "wish_list" (
	"wishlist_id" INT,
	"title" VARCHAR,
	 PRIMARY KEY ("wishlist_id")
);

CREATE TABLE "wish_item" (
	"item_order_id" INT,
	"item_id" INT,
	"item_name" VARCHAR,
	"description" LONGTEXT,
	"price" INT,
	 PRIMARY KEY ("item_order_id"),
	 CONSTRAINT "item_id" FOREIGN KEY ("item_id") REFERENCES "wish_list" ("wishlist_id")
);
