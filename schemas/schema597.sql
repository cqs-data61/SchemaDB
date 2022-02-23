DROP DATABASE IF EXISTS "schema597";
CREATE DATABASE "schema597";
USE "schema597";
CREATE TABLE "locations" (
	"id" INT,
	"city" VARCHAR,
	"road_name" VARCHAR,
	"place_no" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "products" (
	"gtin14" CHAR,
	"name" VARCHAR,
	"description" VARCHAR,
	"qty_in_stock" INT,
	 PRIMARY KEY ("gtin14")
);

CREATE TABLE "company_orders" (
	"id" INT,
	"product_gtin14" CHAR,
	"datetime_ordered" DATETIME,
	"qty_bought" INT,
	"delivery_date" DATE,
	 PRIMARY KEY ("id","product_gtin14"),
	 CONSTRAINT "fk_company_orders_product_id" FOREIGN KEY ("product_gtin14") REFERENCES "products" ("gtin14")
);

CREATE TABLE "customers" (
	"id" INT,
	"last_name" VARCHAR,
	"first_name" VARCHAR,
	"email_address" VARCHAR,
	"phone" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "customer_locations" (
	"customer_id" INT,
	"location_id" INT,
	 PRIMARY KEY ("customer_id","location_id"),
	 CONSTRAINT "fk_customer_locations_customer_id" FOREIGN KEY ("customer_id") REFERENCES "customers" ("id"),
	 CONSTRAINT "fk_customer_locations_location_id" FOREIGN KEY ("location_id") REFERENCES "locations" ("id")
);

CREATE TABLE "customer_orders" (
	"id" INT,
	"customer_id" INT,
	"datetime_ordered" DATETIME,
	"delivery_date" DATE,
	"delivery_location" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_customer_orders_customer_location" FOREIGN KEY ("customer_id","delivery_location") REFERENCES "customer_locations" ("customer_id","location_id")
);

CREATE TABLE "customer_order_items" (
	"customer_order_id" INT,
	"product_gtin14" CHAR,
	"qty_bought" INT,
	 PRIMARY KEY ("customer_order_id","product_gtin14"),
	 CONSTRAINT "fk_order_items_product_id" FOREIGN KEY ("product_gtin14") REFERENCES "products" ("gtin14"),
	 CONSTRAINT "fk_order_items_customer_order_id" FOREIGN KEY ("customer_order_id") REFERENCES "customer_orders" ("id")
);
