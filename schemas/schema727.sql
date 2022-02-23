DROP DATABASE IF EXISTS "schema727";
CREATE DATABASE "schema727";
USE "schema727";
CREATE TABLE "supplier_phone" (
	"id" INTEGER,
	"created_at" TIMESTAMP,
	"deleted" TINYINT,
	"deleted_at" TIMESTAMP,
	"modified_at" TIMESTAMP,
	"number" VARCHAR,
	"supplier_id" INTEGER
);

CREATE TABLE "supplier_catalog" (
	"id" INTEGER,
	"catalog_code" VARCHAR,
	"created_at" TIMESTAMP,
	"deleted" TINYINT,
	"deleted_at" TIMESTAMP,
	"modified_at" TIMESTAMP,
	"product_id" INTEGER,
	"supplier_id" INTEGER
);

CREATE TABLE "category_level" (
	"id" INTEGER,
	"category_id" INTEGER,
	"l1" INTEGER,
	"l2" INTEGER,
	"l3" INTEGER,
	"l4" INTEGER,
	"created_at" TIMESTAMP,
	"deleted" TINYINT,
	"deleted_at" TIMESTAMP,
	"modified_at" TIMESTAMP
);

CREATE TABLE "sale_share" (
	"id" INTEGER,
	"created_at" TIMESTAMP,
	"deleted" TINYINT,
	"deleted_at" TIMESTAMP,
	"due_date" DATE,
	"modified_at" TIMESTAMP,
	"number" INTEGER,
	"payment_date" DATE,
	"sale_invoice_id" INTEGER
);

CREATE TABLE "sale_detail" (
	"id" INTEGER,
	"amount" INTEGER,
	"created_at" TIMESTAMP,
	"deleted" TINYINT,
	"deleted_at" TIMESTAMP,
	"iva" TINYINT,
	"modified_at" TIMESTAMP,
	"product_id" INTEGER,
	"sale_invoice_id" INTEGER,
	"subtotal" DECIMAL,
	"unit_price" DECIMAL
);

CREATE TABLE "sale_invoice" (
	"id" INTEGER,
	"client_id" INTEGER,
	"created_at" TIMESTAMP,
	"deleted" TINYINT,
	"deleted_at" TIMESTAMP,
	"discount" DECIMAL,
	"generation_date" TIMESTAMP,
	"invoice_type" VARCHAR,
	"modified_at" TIMESTAMP,
	"number" INTEGER,
	"payment_type" VARCHAR,
	"surcharge" DECIMAL,
	"total" DECIMAL
);

CREATE TABLE "purchase_share" (
	"id" INTEGER,
	"created_at" TIMESTAMP,
	"deleted" TINYINT,
	"deleted_at" TIMESTAMP,
	"due_date" DATE,
	"modified_at" TIMESTAMP,
	"number" INTEGER,
	"payment_date" DATE,
	"purchase_invoice_id" INTEGER
);

CREATE TABLE "purchase_detail" (
	"id" INTEGER,
	"amount" INTEGER,
	"created_at" TIMESTAMP,
	"deleted" TINYINT,
	"deleted_at" TIMESTAMP,
	"iva" TINYINT,
	"modified_at" TIMESTAMP,
	"product_id" INTEGER,
	"purchase_invoice_id" INTEGER,
	"subtotal" DECIMAL,
	"unit_price" DECIMAL
);

CREATE TABLE "purchase_invoice" (
	"id" INTEGER,
	"created_at" TIMESTAMP,
	"deleted" TINYINT,
	"deleted_at" TIMESTAMP,
	"discount" DECIMAL,
	"generation_date" TIMESTAMP,
	"invoice_type" VARCHAR,
	"modified_at" TIMESTAMP,
	"number" INTEGER,
	"payment_type" VARCHAR,
	"supplier_id" INTEGER,
	"surcharge" DECIMAL,
	"total" DECIMAL
);

CREATE TABLE "supplier" (
	"id" INTEGER,
	"address" VARCHAR,
	"created_at" TIMESTAMP,
	"cuit" BIGINT,
	"deleted" TINYINT,
	"deleted_at" TIMESTAMP,
	"description" VARCHAR,
	"locality_id" INTEGER,
	"mail" VARCHAR,
	"modified_at" TIMESTAMP,
	"name" VARCHAR
);

CREATE TABLE "product" (
	"id" INTEGER,
	"category_id" INTEGER,
	"created_at" TIMESTAMP,
	"deleted" TINYINT,
	"deleted_at" TIMESTAMP,
	"description" VARCHAR,
	"detail_id" INTEGER,
	"image" VARCHAR,
	"modified_at" TIMESTAMP,
	"product_code" VARCHAR,
	"stock" INTEGER
);

CREATE TABLE "product_detail" (
	"id" INTEGER,
	"brand" VARCHAR,
	"created_at" TIMESTAMP,
	"deleted" TINYINT,
	"deleted_at" TIMESTAMP,
	"material_id" INTEGER,
	"measure_id" INTEGER,
	"modified_at" TIMESTAMP,
	"presentation_id" INTEGER
);

CREATE TABLE "presentation" (
	"id" INTEGER,
	"created_at" TIMESTAMP,
	"deleted" TINYINT,
	"deleted_at" TIMESTAMP,
	"description" VARCHAR,
	"modified_at" TIMESTAMP,
	"units" INTEGER
);

CREATE TABLE "measure" (
	"id" INTEGER,
	"created_at" TIMESTAMP,
	"deleted" TINYINT,
	"deleted_at" TIMESTAMP,
	"diameter" DOUBLE,
	"length" DOUBLE,
	"modified_at" TIMESTAMP,
	"type" VARCHAR,
	"width" DOUBLE
);

CREATE TABLE "material" (
	"id" INTEGER,
	"color" VARCHAR,
	"created_at" TIMESTAMP,
	"deleted" TINYINT,
	"deleted_at" TIMESTAMP,
	"modified_at" TIMESTAMP,
	"type" VARCHAR
);

CREATE TABLE "client_phone" (
	"id" INTEGER,
	"client_id" INTEGER,
	"created_at" TIMESTAMP,
	"deleted" TINYINT,
	"deleted_at" TIMESTAMP,
	"modified_at" TIMESTAMP,
	"number" VARCHAR
);

CREATE TABLE "client" (
	"id" INTEGER,
	"address" VARCHAR,
	"created_at" TIMESTAMP,
	"cuit" BIGINT,
	"deleted" TINYINT,
	"deleted_at" TIMESTAMP,
	"dni" VARCHAR,
	"locality_id" INTEGER,
	"mail" VARCHAR,
	"modified_at" TIMESTAMP,
	"name" VARCHAR,
	"surname" VARCHAR
);

CREATE TABLE "category" (
	"id" INTEGER,
	"created_at" TIMESTAMP,
	"deleted" TINYINT,
	"deleted_at" TIMESTAMP,
	"description" VARCHAR,
	"modified_at" TIMESTAMP
);

CREATE TABLE "locality" (
	"id" INTEGER,
	"category" VARCHAR,
	"centroid_lat" DOUBLE,
	"centroid_lon" DOUBLE,
	"departament_id" INTEGER,
	"function" VARCHAR,
	"municipality_id" INTEGER,
	"name" VARCHAR,
	"province_id" INTEGER
);

CREATE TABLE "province" (
	"id" INTEGER,
	"name" VARCHAR
);

CREATE TABLE "municipality" (
	"id" INTEGER,
	"name" VARCHAR
);

CREATE TABLE "departments" (
	"id" INTEGER,
	"name" VARCHAR
);
