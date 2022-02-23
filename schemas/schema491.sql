DROP DATABASE IF EXISTS "schema491";
CREATE DATABASE "schema491";
USE "schema491";
CREATE TABLE "products" (
	"id" INT,
	"name" VARCHAR2,
	"price" DECIMAL
);

CREATE TABLE "users" (
	"id" INT,
	"name" VARCHAR2
);

CREATE TABLE "orders" (
	"id" INT,
	"user_id" INT,
	 CONSTRAINT "fkeycon_orders_to_users" FOREIGN KEY ("user_id") REFERENCES "users" ("id")
);

CREATE TABLE "order_products" (
	"id" INT,
	"order_id" INT,
	"product_id" INT,
	"quantity" INT,
	"acquire_price" DECIMAL,
	 PRIMARY KEY ("order_id","product_id"),
	 CONSTRAINT "fk_product_id" FOREIGN KEY ("product_id") REFERENCES "products" ("id"),
	 CONSTRAINT "fk_order_id" FOREIGN KEY ("order_id") REFERENCES "orders" ("id")
);
