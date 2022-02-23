DROP DATABASE IF EXISTS "schema52";
CREATE DATABASE "schema52";
USE "schema52";
CREATE TABLE "customer" (
	"id" INT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "order_summary" (
	"id" INT,
	"customer_id" INT,
	"order_time" TIMESTAMP,
	"original_cost" DECIMAL,
	"final_discount" DECIMAL,
	"final_cost" DECIMAL,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_order_summary_to_customer" FOREIGN KEY ("customer_id") REFERENCES "customer" ("id")
);

CREATE TABLE "order_promo" (
	"id" INT,
	"promo_name" VARCHAR,
	"order_summary_id" INT,
	"quantity" INT,
	"discount" DECIMAL,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_order_promo_to_order_summary" FOREIGN KEY ("order_summary_id") REFERENCES "order_summary" ("id")
);

CREATE TABLE "product" (
	"id" INT,
	"name" VARCHAR,
	"price" DECIMAL,
	"quantity" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "order_table" (
	"id" INT,
	"product_id" INT,
	"order_summary_id" INT,
	"quantity" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_order_table_to_order_summary" FOREIGN KEY ("order_summary_id") REFERENCES "order_summary" ("id"),
	 CONSTRAINT "fkeycon_order_table_to_product" FOREIGN KEY ("product_id") REFERENCES "product" ("id")
);
