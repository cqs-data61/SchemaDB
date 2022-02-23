DROP DATABASE IF EXISTS "schema1575";
CREATE DATABASE "schema1575";
USE "schema1575";
CREATE TABLE "products" (
	"id" INT,
	"name" VARCHAR,
	"description" TEXT,
	"price" DECIMAL,
	"peices_num" SMALLINT,
	"img" VARCHAR,
	"cat_id" INT,
	"created_at" DATETIME
);

CREATE TABLE "orders" (
	"id" INT,
	"name" VARCHAR,
	"email" VARCHAR,
	"phone" VARCHAR,
	"address" VARCHAR,
	"created_at" DATETIME,
	"status" ENUM
);

CREATE TABLE "orderdetalis" (
	"id" INT,
	"order_id" INT,
	"product_id" INT
);

CREATE TABLE "cats" (
	"id" INT,
	"name" VARCHAR,
	"created_at" DATETIME
);

CREATE TABLE "admins" (
	"id" INT,
	"name" VARCHAR,
	"password" VARCHAR,
	"is_super" ENUM,
	"email" VARCHAR,
	"created_at" DATETIME
);
