DROP DATABASE IF EXISTS "schema1861";
CREATE DATABASE "schema1861";
USE "schema1861";
CREATE TABLE "orders" (
	"order_id" BINARY,
	"email" VARCHAR,
	"address" VARCHAR,
	"postcode" VARCHAR,
	"order_status" VARCHAR,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("order_id")
);

CREATE TABLE "products" (
	"product_id" BINARY,
	"product_name" VARCHAR,
	"category" VARCHAR,
	"price" BIGINT,
	"description" VARCHAR,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("product_id")
);

CREATE TABLE "order_items" (
	"seq" BIGINT,
	"order_id" BINARY,
	"product_id" BINARY,
	"category" VARCHAR,
	"price" BIGINT,
	"quantity" INT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 CONSTRAINT "fk_order_items_to_product" FOREIGN KEY ("product_id") REFERENCES "products" ("product_id"),
	 CONSTRAINT "fk_order_items_to_order" FOREIGN KEY ("order_id") REFERENCES "orders" ("order_id")
);
