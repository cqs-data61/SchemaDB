DROP DATABASE IF EXISTS "schema2391";
CREATE DATABASE "schema2391";
USE "schema2391";
CREATE TABLE "users" (
	"id" INT,
	"email" VARCHAR,
	"password" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "tables" (
	"id" INT,
	"table_no" INT,
	"capacity" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "sales" (
	"id" INT,
	"cat_id" INT,
	"total_price" INT,
	"qty" INT,
	"table_no" INT,
	"date" DATE,
	"ass_price" INT,
	"order_detail" LONGTEXT,
	"status" ENUM,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "products" (
	"id" INT,
	"product_name" VARCHAR,
	"quantity" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "menus" (
	"id" INT,
	"name" VARCHAR,
	"price" VARCHAR,
	"asuming_price" INT,
	"main_menu" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "admin" (
	"id" INT,
	"email" VARCHAR,
	"password" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);
