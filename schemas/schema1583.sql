DROP DATABASE IF EXISTS "schema1583";
CREATE DATABASE "schema1583";
USE "schema1583";
CREATE TABLE "order_product" (
	"order_id" INTEGER,
	"product_id" INTEGER,
	"unit_amount" INTEGER,
	"quantity" INTEGER
);

CREATE TABLE "order" (
	"id" INTEGER,
	"status" ENUM,
	"stripe_checkout_id" VARCHAR,
	"customer_name" VARCHAR,
	"customer_email" VARCHAR,
	"customer_shipping_address" VARCHAR,
	"customer_billing_address" VARCHAR,
	"reference" VARCHAR,
	"total_amount" INTEGER,
	"currency" VARCHAR,
	"created_at" DATETIME,
	"updated_at" DATETIME
);

CREATE TABLE "product" (
	"id" INTEGER,
	"name" VARCHAR,
	"slug" VARCHAR,
	"description" MEDIUMTEXT,
	"unit_amount" INTEGER,
	"image_url" VARCHAR,
	"stock" INTEGER
);
