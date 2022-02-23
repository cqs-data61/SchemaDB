DROP DATABASE IF EXISTS "schema2164";
CREATE DATABASE "schema2164";
USE "schema2164";
CREATE TABLE "customer_order" (
	"id" VARCHAR,
	"creation_time" TIMESTAMP,
	"address" VARCHAR,
	"city" VARCHAR,
	"country" VARCHAR,
	"email" VARCHAR,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"phone" VARCHAR,
	"zipcode" VARCHAR,
	"price" NUMERIC,
	 PRIMARY KEY ("id")
);

CREATE TABLE "article" (
	"id" VARCHAR,
	"name" VARCHAR,
	"description" VARCHAR,
	"price" NUMERIC,
	"amount_in_stock" INT,
	"image_url" VARCHAR,
	"version" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "order_item" (
	"id" VARCHAR,
	"quantity" INT,
	"article_id" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_order_item_to_article" FOREIGN KEY ("article_id") REFERENCES "article" ("id")
);

CREATE TABLE "customer_order_items" (
	"customer_order_id" VARCHAR,
	"items_id" VARCHAR,
	 CONSTRAINT "fkeycon_customer_order_items_to_customer_order" FOREIGN KEY ("customer_order_id") REFERENCES "customer_order" ("id"),
	 CONSTRAINT "fkeycon_customer_order_items_to_order_item" FOREIGN KEY ("items_id") REFERENCES "order_item" ("id")
);

CREATE TABLE "admin" (
	"id" VARCHAR,
	"email" VARCHAR,
	"username" VARCHAR,
	"password" VARCHAR,
	 PRIMARY KEY ("id")
);
