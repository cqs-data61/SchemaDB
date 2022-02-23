DROP DATABASE IF EXISTS "schema1684";
CREATE DATABASE "schema1684";
USE "schema1684";
CREATE TABLE "sellers" (
	"seller_id" VARCHAR,
	"seller_zip_code_prefix" DECIMAL,
	"seller_city" VARCHAR,
	"seller_state" VARCHAR
);

CREATE TABLE "products" (
	"product_id" VARCHAR,
	"product_category_name" VARCHAR,
	"product_name_lenght" DECIMAL,
	"product_description_lenght" DECIMAL,
	"product_photos_qty" DECIMAL,
	"product_weight_g" DECIMAL,
	"product_length_cm" DECIMAL,
	"product_height_cm" DECIMAL,
	"product_width_cm" DECIMAL
);

CREATE TABLE "product_category_name_translation" (
	"﻿product_category_name" VARCHAR,
	"product_category_name_english" VARCHAR
);

CREATE TABLE "orders" (
	"order_id" VARCHAR,
	"customer_id" VARCHAR,
	"order_status" VARCHAR,
	"order_purchase_timestamp" TIMESTAMP,
	"order_approved_at" TIMESTAMP,
	"order_delivered_carrier_date" TIMESTAMP,
	"order_delivered_customer_date" TIMESTAMP,
	"order_estimated_delivery_date" TIMESTAMP
);

CREATE TABLE "order_reviews" (
	"review_id" VARCHAR,
	"order_id" VARCHAR,
	"review_score" DECIMAL,
	"review_comment_title" VARCHAR,
	"review_comment_message" VARCHAR,
	"review_creation_date" TIMESTAMP,
	"review_answer_timestamp" TIMESTAMP
);

CREATE TABLE "order_payments" (
	"order_id" VARCHAR,
	"payment_sequential" DECIMAL,
	"payment_type" VARCHAR,
	"payment_installments" DECIMAL,
	"payment_value" DECIMAL,
	"order_purchase_timestamp" TIMESTAMP
);

CREATE TABLE "order_items" (
	"order_id" VARCHAR,
	"order_item_id" DECIMAL,
	"product_id" VARCHAR,
	"seller_id" VARCHAR,
	"shipping_limit_date" TIMESTAMP,
	"price" DECIMAL,
	"freight_value" DECIMAL,
	"order_purchase_timestamp" TIMESTAMP
);

CREATE TABLE "geolocation" (
	"geolocation_zip_code_prefix" DECIMAL,
	"geolocation_lat" DECIMAL,
	"geolocation_lng" DECIMAL,
	"geolocation_city" VARCHAR,
	"geolocation_state" VARCHAR
);

CREATE TABLE "customers" (
	"customer_id" VARCHAR,
	"customer_unique_id" VARCHAR,
	"customer_zip_code_prefix" DECIMAL,
	"customer_city" VARCHAR,
	"customer_state" VARCHAR
);
