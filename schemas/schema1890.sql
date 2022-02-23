DROP DATABASE IF EXISTS "schema1890";
CREATE DATABASE "schema1890";
USE "schema1890";
CREATE TABLE "users" (
	"id" BIGINT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	"deleted_at" DATETIME,
	"email" LONGTEXT,
	"username" LONGTEXT,
	"password" LONGTEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "quote_items" (
	"id" BIGINT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	"deleted_at" DATETIME,
	"description" LONGTEXT,
	"qty" LONGTEXT,
	"unit" LONGTEXT,
	"unit_price" LONGTEXT,
	"quote_id" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "order_items" (
	"id" BIGINT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	"deleted_at" DATETIME,
	"description" LONGTEXT,
	"qty" LONGTEXT,
	"unit" LONGTEXT,
	"unit_price" LONGTEXT,
	"order_id" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "customers" (
	"id" BIGINT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	"deleted_at" DATETIME,
	"email" LONGTEXT,
	"name" LONGTEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "quotes" (
	"id" BIGINT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	"deleted_at" DATETIME,
	"description" LONGTEXT,
	"quote_number" LONGTEXT,
	"created_by" BIGINT,
	"customer_id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_customers_quotes" FOREIGN KEY ("customer_id") REFERENCES "customers" ("id")
);

CREATE TABLE "orders" (
	"id" BIGINT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	"deleted_at" DATETIME,
	"description" LONGTEXT,
	"delivery_date" LONGTEXT,
	"invoice_number" LONGTEXT,
	"currency" LONGTEXT,
	"order_number" LONGTEXT,
	"created_by" BIGINT,
	"customer_id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_customers_orders" FOREIGN KEY ("customer_id") REFERENCES "customers" ("id")
);
