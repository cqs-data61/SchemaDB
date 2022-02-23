DROP DATABASE IF EXISTS "schema1116";
CREATE DATABASE "schema1116";
USE "schema1116";
CREATE TABLE "orders" (
	"order_id" VARCHAR,
	"order_status" VARCHAR,
	"username" VARCHAR,
	"restaurant_id" VARCHAR,
	"delivery_address" VARCHAR,
	"notes" VARCHAR,
	"created_on" TIMESTAMP,
	 PRIMARY KEY ("order_id")
);

CREATE TABLE "order_items" (
	"order_item_id" VARCHAR,
	"order_id" VARCHAR,
	"item_id" VARCHAR,
	"item_name" VARCHAR,
	"item_price" NUMERIC,
	"item_quantity" INTEGER,
	 PRIMARY KEY ("order_item_id"),
	 CONSTRAINT "fk_order" FOREIGN KEY ("order_id") REFERENCES "orders" ("order_id")
);
