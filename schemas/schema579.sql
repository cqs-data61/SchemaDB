DROP DATABASE IF EXISTS "schema579";
CREATE DATABASE "schema579";
USE "schema579";
CREATE TABLE "customers" (
	"cust_id" INT,
	"cust_name" VARCHAR,
	"cust_address" VARCHAR,
	 PRIMARY KEY ("cust_id")
);

CREATE TABLE "products" (
	"product_id" INT,
	"product_name" VARCHAR,
	 PRIMARY KEY ("product_id")
);

CREATE TABLE "pallets" (
	"pallet_id" INT,
	"product_id" INT,
	"blocked" BOOL,
	"production_datetime" DATETIME,
	 PRIMARY KEY ("pallet_id"),
	 CONSTRAINT "fkeycon_pallets_to_products" FOREIGN KEY ("product_id") REFERENCES "products" ("product_id")
);

CREATE TABLE "orders" (
	"order_id" INT,
	"delivery_date" DATE,
	"order_date" DATE,
	"pallet_id" INT,
	"cust_id" INT,
	 PRIMARY KEY ("order_id"),
	 CONSTRAINT "fkeycon_orders_to_pallets" FOREIGN KEY ("pallet_id") REFERENCES "pallets" ("pallet_id"),
	 CONSTRAINT "fkeycon_orders_to_customers" FOREIGN KEY ("cust_id") REFERENCES "customers" ("cust_id")
);

CREATE TABLE "specifications" (
	"order_id" INT,
	"product_id" INT,
	"quantity" INT,
	 PRIMARY KEY ("order_id","product_id"),
	 CONSTRAINT "fkeycon_specifications_to_orders" FOREIGN KEY ("order_id") REFERENCES "orders" ("order_id"),
	 CONSTRAINT "fkeycon_specifications_to_products" FOREIGN KEY ("product_id") REFERENCES "products" ("product_id")
);

CREATE TABLE "raw_materials" (
	"ingredients" VARCHAR,
	"in_stock" INT,
	"unit" VARCHAR,
	"delivery_quantity" INT,
	"delivery_date" DATE,
	 PRIMARY KEY ("ingredients","delivery_date")
);

CREATE TABLE "recipes" (
	"product_id" INT,
	"ingredients" VARCHAR,
	"ingredient_amount" INT,
	 PRIMARY KEY ("product_id","ingredients"),
	 CONSTRAINT "fkeycon_recipes_to_raw_materials" FOREIGN KEY ("ingredients") REFERENCES "raw_materials" ("ingredients"),
	 CONSTRAINT "fkeycon_recipes_to_products" FOREIGN KEY ("product_id") REFERENCES "products" ("product_id")
);
