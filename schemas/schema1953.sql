DROP DATABASE IF EXISTS "schema1953";
CREATE DATABASE "schema1953";
USE "schema1953";
CREATE TABLE "feedback" (
	"feedback_id" VARCHAR,
	"order_id" VARCHAR,
	"feedback_score" DECIMAL,
	"feedback_form_sent_date" TIMESTAMP,
	"feedback_answer_date" TIMESTAMP,
	 PRIMARY KEY ("feedback_id","order_id")
);

CREATE TABLE "payment" (
	"order_id" VARCHAR,
	"payment_sequential" INT,
	"payment_type" VARCHAR,
	"payment_installments" INT,
	"payment_value" DECIMAL,
	 PRIMARY KEY ("order_id","payment_sequential")
);

CREATE TABLE "order_item" (
	"order_id" VARCHAR,
	"order_item_id" DECIMAL,
	"product_id" VARCHAR,
	"seller_id" VARCHAR,
	"pickup_limit_date" TIMESTAMP,
	"price" DECIMAL,
	"shipping_cost" DECIMAL,
	 PRIMARY KEY ("order_id","order_item_id")
);

CREATE TABLE "order" (
	"order_id" VARCHAR,
	"user_name" VARCHAR,
	"order_status" VARCHAR,
	"order_date" TIMESTAMP,
	"order_approved_date" TIMESTAMP,
	"pickup_date" TIMESTAMP,
	"delivered_date" TIMESTAMP,
	"estimated_time_delivery" TIMESTAMP,
	 PRIMARY KEY ("order_id")
);

CREATE TABLE "seller" (
	"seller_id" VARCHAR,
	"seller_zip_code" VARCHAR,
	"seller_city" VARCHAR,
	"seller_state" VARCHAR,
	 PRIMARY KEY ("seller_id")
);

CREATE TABLE "product" (
	"product_id" VARCHAR,
	"product_category" VARCHAR,
	"product_name_length" DECIMAL,
	"product_description_length" DECIMAL,
	"product_photos_qty" DECIMAL,
	"product_weight_g" DECIMAL,
	"product_length_cm" DECIMAL,
	"product_height_cm" DECIMAL,
	"product_width_cm" DECIMAL,
	 PRIMARY KEY ("product_id")
);

CREATE TABLE "user" (
	"user_name" VARCHAR,
	"customer_zip_code" VARCHAR,
	"customer_city" VARCHAR,
	"customer_state" VARCHAR
);
