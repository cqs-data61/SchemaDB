DROP DATABASE IF EXISTS "schema1424";
CREATE DATABASE "schema1424";
USE "schema1424";
CREATE TABLE "box" (
	"id" INT,
	"name" VARCHAR,
	"quantity" INT
);

CREATE TABLE "customer" (
	"id" INT,
	"fullname" VARCHAR,
	"phone" VARCHAR,
	"email" VARCHAR,
	"address" TEXT
);

CREATE TABLE "user_role" (
	"id" INT,
	"user_id" INT,
	"role_id" INT
);

CREATE TABLE "role" (
	"id" INT,
	"name" VARCHAR
);

CREATE TABLE "user" (
	"id" INT,
	"firstname" VARCHAR,
	"lastname" VARCHAR,
	"username" VARCHAR,
	"email" VARCHAR,
	"password" VARCHAR,
	"phone" VARCHAR,
	"address" TEXT,
	"active" BIT
);

CREATE TABLE "supplier" (
	"id" INT,
	"name" VARCHAR,
	"phone" VARCHAR,
	"address" TEXT
);

CREATE TABLE "returned" (
	"id" INT,
	"sale_id" INT,
	"purchase_id" INT,
	"quantity" INT,
	"unit_price" DOUBLE,
	"deduction" DOUBLE,
	"total" DOUBLE,
	"wastage" BIT,
	"datetime" DATETIME
);

CREATE TABLE "sale" (
	"id" INT,
	"sale_invoice_id" VARCHAR,
	"stock_id" INT,
	"quantity" INT,
	"unit_price" DOUBLE,
	"discount" DOUBLE,
	"total" DOUBLE,
	"datetime" DATETIME
);

CREATE TABLE "stock" (
	"id" INT,
	"purchase_id" INT,
	"location_id" INT,
	"quantity" INT,
	"datetime" DATETIME
);

CREATE TABLE "purchase" (
	"id" INT,
	"brand_id" INT,
	"purchase_invoice_id" VARCHAR,
	"batch_no" VARCHAR,
	"box_id" INT,
	"quantity" INT,
	"unit_price" DOUBLE,
	"discount" DOUBLE,
	"total" DOUBLE,
	"expiry_datetime" DATETIME,
	"datetime" DATETIME
);

CREATE TABLE "purchase_invoice" (
	"id" VARCHAR,
	"supplier_id" INT,
	"total" DOUBLE,
	"vat" DOUBLE,
	"discount" DOUBLE,
	"payable" DOUBLE,
	"paid" DOUBLE,
	"returned" DOUBLE,
	"datetime" DATETIME
);

CREATE TABLE "sale_invoice" (
	"id" VARCHAR,
	"user_id" INT,
	"total" DOUBLE,
	"vat" DOUBLE,
	"discount" DOUBLE,
	"payable" DOUBLE,
	"paid" DOUBLE,
	"returned" DOUBLE,
	"datetime" DATETIME
);

CREATE TABLE "indication_generic" (
	"id" INT,
	"indication_id" INT,
	"generic_id" INT
);

CREATE TABLE "indication" (
	"id" INT,
	"name" VARCHAR,
	"description" TEXT
);

CREATE TABLE "generic" (
	"id" INT,
	"name" VARCHAR,
	"description" TEXT
);

CREATE TABLE "manufacturer" (
	"id" INT,
	"name" VARCHAR,
	"address" TEXT
);

CREATE TABLE "location" (
	"id" INT,
	"name" VARCHAR
);

CREATE TABLE "dosage_form" (
	"id" INT,
	"name" VARCHAR
);

CREATE TABLE "brand" (
	"id" INT,
	"name" VARCHAR,
	"strength" VARCHAR,
	"dosage_form_id" INT,
	"generic_id" INT,
	"manufacturer_id" INT,
	"purchase_price" DOUBLE,
	"sale_price" DOUBLE
);
