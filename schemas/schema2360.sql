DROP DATABASE IF EXISTS "schema2360";
CREATE DATABASE "schema2360";
USE "schema2360";
CREATE TABLE "customers" (
	"id" VARCHAR,
	"name" VARCHAR,
	"last_name" VARCHAR,
	"phone_number" NUMERIC,
	"direction" VARCHAR,
	"email" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "purchases" (
	"purchase_id" SERIAL,
	"customer_id" VARCHAR,
	"date" TIMESTAMP,
	"payment_method" CHAR,
	"comment" VARCHAR,
	"state" CHAR,
	 PRIMARY KEY ("purchase_id"),
	 CONSTRAINT "fk_PURCHASES_COSTUMERS1" FOREIGN KEY ("customer_id") REFERENCES "customers" ("id")
);

CREATE TABLE "categories" (
	"category_id" SERIAL,
	"description" VARCHAR,
	"state" BOOLEAN,
	 PRIMARY KEY ("category_id")
);

CREATE TABLE "products" (
	"product_id" SERIAL,
	"name" VARCHAR,
	"category_id" INT,
	"bar_code" VARCHAR,
	"sell_price" DECIMAL,
	"stock_quantity" INT,
	"state" BOOLEAN,
	 PRIMARY KEY ("product_id"),
	 CONSTRAINT "fk_PRODUCTS_CATEGORIES" FOREIGN KEY ("category_id") REFERENCES "categories" ("category_id")
);

CREATE TABLE "purchases_products" (
	"purchase_id" INT,
	"product_id" INT,
	"quantity" INT,
	"total" DECIMAL,
	"state" BOOLEAN,
	 PRIMARY KEY ("purchase_id","product_id"),
	 CONSTRAINT "fk_PURCHASES_PRODUCTS_PRODUCTS1" FOREIGN KEY ("product_id") REFERENCES "products" ("product_id"),
	 CONSTRAINT "fk_PURCHASES_PRODUCTS_PURCHASES1" FOREIGN KEY ("purchase_id") REFERENCES "purchases" ("purchase_id")
);
