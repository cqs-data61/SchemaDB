DROP DATABASE IF EXISTS "schema2481";
CREATE DATABASE "schema2481";
USE "schema2481";
CREATE TABLE "product" (
	"id_product" VARCHAR,
	"name" VARCHAR,
	"description" VARCHAR,
	"base_price" VARCHAR,
	"tax_rate" VARCHAR,
	"product_status" VARCHAR,
	"inventory_quantity" VARCHAR,
	 PRIMARY KEY ("id_product")
);

CREATE TABLE "employee" (
	"id_number" VARCHAR,
	"id_type" VARCHAR,
	"name" VARCHAR,
	"last_name" VARCHAR,
	 PRIMARY KEY ("id_number")
);
