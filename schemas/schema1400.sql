DROP DATABASE IF EXISTS "schema1400";
CREATE DATABASE "schema1400";
USE "schema1400";
CREATE TABLE "pro_stocks" (
	"stock_id" INTEGER,
	"manufacture_id" BIGINT,
	"manufacture_quantity" DOUBLE,
	"product_id" BIGINT,
	"purchase_id" BIGINT,
	"purchase_quantity" DOUBLE,
	"sell_id" BIGINT,
	"sell_quantity" DOUBLE,
	"version_id" INTEGER,
	 PRIMARY KEY ("stock_id")
);

CREATE TABLE "pro_sell_product_maps" (
	"id" INTEGER,
	"amount_before_tax" DOUBLE,
	"discount_amount" DOUBLE,
	"gst_amount" DOUBLE,
	"payable_amount" DOUBLE,
	"product_id" BIGINT,
	"sell_id" BIGINT,
	"sell_quantity" DOUBLE,
	"version_id" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "pro_sells" (
	"sell_id" INTEGER,
	"created_by" VARCHAR,
	"creation_date" DATETIME,
	"customer_id" BIGINT,
	"is_amount_settled" VARCHAR,
	"last_update_date" DATETIME,
	"last_updated_by" VARCHAR,
	"sell_date" DATE,
	"sell_notes" VARCHAR,
	"version_id" INTEGER,
	 PRIMARY KEY ("sell_id")
);

CREATE TABLE "pro_purchase_types" (
	"purchase_type_id" INTEGER,
	"description" VARCHAR,
	"purchase_type_code" VARCHAR,
	"version_id" INTEGER,
	 PRIMARY KEY ("purchase_type_id")
);

CREATE TABLE "pro_purchase_manufacture_map" (
	"id" INTEGER,
	"in_quantity" DOUBLE,
	"manufacture_id" BIGINT,
	"out_quantity" DOUBLE,
	"product_id" BIGINT,
	"purchase_id" BIGINT,
	"version_id" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "pro_purchases" (
	"purchase_id" INTEGER,
	"amount_before_tax" DOUBLE,
	"bill_number" VARCHAR,
	"discount_amount" DOUBLE,
	"gst_amount" DOUBLE,
	"is_amount_settled" VARCHAR,
	"is_consumed" VARCHAR,
	"payable_amount" DOUBLE,
	"product_id" BIGINT,
	"purchase_date" DATE,
	"purchase_notes" VARCHAR,
	"purchase_quantity" DOUBLE,
	"purchase_type_id" BIGINT,
	"version_id" INTEGER,
	 PRIMARY KEY ("purchase_id")
);

CREATE TABLE "pro_products" (
	"product_id" INTEGER,
	"category_id" BIGINT,
	"description" VARCHAR,
	"product_barcode" VARCHAR,
	"product_code" VARCHAR,
	"product_image" VARCHAR,
	"product_link" VARCHAR,
	"product_name" VARCHAR,
	"sub_category_id" BIGINT,
	"version_id" INTEGER,
	 PRIMARY KEY ("product_id")
);

CREATE TABLE "pro_metric_units" (
	"metric_id" INTEGER,
	"unit_name" VARCHAR,
	"unit_symbol" VARCHAR,
	"unit_type" VARCHAR,
	"version_id" INTEGER,
	 PRIMARY KEY ("metric_id")
);

CREATE TABLE "pro_manufacture_product_map" (
	"id" INTEGER,
	"manufacture_id" BIGINT,
	"product_id" BIGINT,
	"product_quantity" DOUBLE,
	"version_id" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "pro_manufactures" (
	"manufacture_id" INTEGER,
	"is_delete_allowed" VARCHAR,
	"manufacture_cost" DOUBLE,
	"manufacture_date" DATE,
	"manufacture_notes" VARCHAR,
	"manufacture_quantity" DOUBLE,
	"product_id" BIGINT,
	"related_purchase_id" BIGINT,
	"version_id" INTEGER,
	 PRIMARY KEY ("manufacture_id")
);

CREATE TABLE "pro_file_execution_entries" (
	"id" INTEGER,
	"created_by" VARCHAR,
	"creation_date" DATE,
	"execution_id" BIGINT,
	"file_path" VARCHAR,
	"last_update_date" DATE,
	"last_updated_by" VARCHAR,
	"version_id" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "pro_customers" (
	"customer_id" INTEGER,
	"address1" VARCHAR,
	"address2" VARCHAR,
	"city" INT,
	"country" INT,
	"created_by" VARCHAR,
	"creation_date" DATETIME,
	"customer_email" VARCHAR,
	"customer_gstin" VARCHAR,
	"customer_mobile" VARCHAR,
	"customer_name" VARCHAR,
	"customer_phone_home" VARCHAR,
	"isdeleted" VARCHAR,
	"last_update_date" DATETIME,
	"last_updated_by" VARCHAR,
	"postcode" VARCHAR,
	"ship_address1" VARCHAR,
	"ship_address2" VARCHAR,
	"ship_city" INT,
	"ship_country" INT,
	"ship_postcode" VARCHAR,
	"ship_state" INT,
	"state" INT,
	"version_id" INTEGER,
	 PRIMARY KEY ("customer_id")
);

CREATE TABLE "pro_categories" (
	"id" INTEGER,
	"category_id" BIGINT,
	"category_name" VARCHAR,
	"sub_category_id" BIGINT,
	"sub_category_name" VARCHAR,
	"version_id" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "hibernate_sequence" (
	"next_val" BIGINT
);
