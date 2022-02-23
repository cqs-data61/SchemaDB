DROP DATABASE IF EXISTS "schema1054";
CREATE DATABASE "schema1054";
USE "schema1054";
CREATE TABLE "departments" (
	"department_id" INT,
	"department_name" VARCHAR,
	"over_head_costs" INT,
	 PRIMARY KEY ("department_id")
);

CREATE TABLE "products" (
	"item_id" INT,
	"product_name" VARCHAR,
	"department_name" VARCHAR,
	"price" INT,
	"stock_quantity" INT
);
