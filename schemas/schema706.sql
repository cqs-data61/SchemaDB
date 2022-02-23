DROP DATABASE IF EXISTS "schema706";
CREATE DATABASE "schema706";
USE "schema706";
CREATE TABLE "brands" (
	"brand_id" INT,
	"brand_name" VARCHAR,
	 PRIMARY KEY ("brand_id")
);

CREATE TABLE "categories" (
	"category_id" INT,
	"category_name" VARCHAR,
	 PRIMARY KEY ("category_id")
);

CREATE TABLE "products" (
	"product_id" INT,
	"product_name" VARCHAR,
	"brand_id" INT,
	"category_id" INT,
	"price" INT,
	 PRIMARY KEY ("product_id"),
	 CONSTRAINT "fkeycon_products_to_categories" FOREIGN KEY ("category_id") REFERENCES "categories" ("category_id"),
	 CONSTRAINT "fkeycon_products_to_brands" FOREIGN KEY ("brand_id") REFERENCES "brands" ("brand_id")
);

CREATE TABLE "sales" (
	"product_id" INT,
	"price" INT,
	"date_purchased" DATE,
	 CONSTRAINT "fkeycon_sales_to_products" FOREIGN KEY ("product_id") REFERENCES "products" ("product_id")
);

CREATE TABLE "promotion" (
	"promotion_id" INT,
	"product_id" INT,
	"active" BOOLEAN,
	"percent" FLOAT,
	 PRIMARY KEY ("promotion_id"),
	 CONSTRAINT "fkeycon_promotion_to_products" FOREIGN KEY ("product_id") REFERENCES "products" ("product_id")
);

CREATE TABLE "inventory" (
	"product_id" INT,
	"amt" INT,
	 CONSTRAINT "fkeycon_inventory_to_products" FOREIGN KEY ("product_id") REFERENCES "products" ("product_id")
);

CREATE TABLE "users" (
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"email" VARCHAR,
	"id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "orders" (
	"order_id" INT,
	"user_id" INT,
	"order_date" DATE,
	"order_status" VARCHAR,
	"shipped_date" DATE,
	 PRIMARY KEY ("order_id"),
	 CONSTRAINT "fkeycon_orders_to_users" FOREIGN KEY ("user_id") REFERENCES "users" ("id")
);

CREATE TABLE "order_items" (
	"order_id" INT,
	"product_id" INT,
	"amt" INT,
	"price" FLOAT,
	 PRIMARY KEY ("order_id"),
	 CONSTRAINT "fkeycon_order_items_to_orders" FOREIGN KEY ("order_id") REFERENCES "orders" ("order_id"),
	 CONSTRAINT "fkeycon_order_items_to_products" FOREIGN KEY ("product_id") REFERENCES "products" ("product_id")
);
