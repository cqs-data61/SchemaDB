DROP DATABASE IF EXISTS "schema850";
CREATE DATABASE "schema850";
USE "schema850";
CREATE TABLE "shops_products" (
	"shop_product_id" SERIAL,
	"shop_id" INT,
	"product_id" INT,
	 PRIMARY KEY ("shop_id","product_id")
);

CREATE TABLE "category_products" (
	"category_product_id" SERIAL,
	"category_id" INT,
	"product_id" INT,
	 PRIMARY KEY ("category_id","product_id")
);

CREATE TABLE "prices" (
	"id" SERIAL,
	"sale_price" INT,
	"factory_price" INT,
	"discount_price" INT,
	"create_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"is_active" BOOL,
	"product_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "products" (
	"id" SERIAL,
	"sku" VARCHAR,
	"name" VARCHAR,
	"type" VARCHAR,
	"uri" VARCHAR,
	"description" VARCHAR,
	"is_active" BOOL,
	"create_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "shops" (
	"id" SERIAL,
	"name" VARCHAR,
	"create_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"address" VARCHAR,
	"lon" VARCHAR,
	"lat" VARCHAR,
	"working_hours" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "category" (
	"id" SERIAL,
	"name" VARCHAR,
	"create_at" TIMESTAMP,
	"update_at" TIMESTAMP,
	"uri_name" VARCHAR,
	 PRIMARY KEY ("id")
);
