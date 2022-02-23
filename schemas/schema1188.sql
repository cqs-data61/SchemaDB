DROP DATABASE IF EXISTS "schema1188";
CREATE DATABASE "schema1188";
USE "schema1188";
CREATE TABLE "hibernate_sequence" (
	"next_val" BIGINT
);

CREATE TABLE "header" (
	"id" INT,
	"cust_name" VARCHAR,
	"tot_item_sale" INT,
	"tot_amount_sale" FLOAT,
	"created_on" DATETIME,
	"updated_on" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "items" (
	"id" INT,
	"header_id" INT,
	"name" VARCHAR,
	"qty" INT,
	"unit_price" DOUBLE,
	"total" DOUBLE,
	"created_on" DATETIME,
	"updated_on" DATETIME,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_items_header" FOREIGN KEY ("header_id") REFERENCES "header" ("id")
);
