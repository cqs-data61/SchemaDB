DROP DATABASE IF EXISTS "schema1023";
CREATE DATABASE "schema1023";
USE "schema1023";
CREATE TABLE "order_status" (
	"id" INT,
	"oid" INT,
	"status" VARCHAR,
	"notes" VARCHAR
);

CREATE TABLE "order_items" (
	"id" INT,
	"oid" INT,
	"pid" INT,
	"product_price" VARCHAR,
	"product_quantity" VARCHAR
);

CREATE TABLE "orders" (
	"id" INT,
	"uid" INT,
	"pid" INT,
	"amount" VARCHAR,
	"paymentmethod" VARCHAR
);

CREATE TABLE "categories" (
	"id" INT,
	"title" VARCHAR,
	"description" VARCHAR
);

CREATE TABLE "product_categories" (
	"id" INT,
	"cid" INT,
	"pid" INT
);

CREATE TABLE "products" (
	"id" INT,
	"title" VARCHAR,
	"description" TEXT,
	"image" VARCHAR,
	"type" VARCHAR,
	"stock" VARCHAR,
	"price" DOUBLE
);

CREATE TABLE "user_address" (
	"id" INT,
	"uid" INT,
	"phone" VARCHAR,
	"address1" VARCHAR,
	"address2" VARCHAR,
	"city" VARCHAR,
	"state" VARCHAR,
	"country" VARCHAR,
	"zipcode" VARCHAR
);
