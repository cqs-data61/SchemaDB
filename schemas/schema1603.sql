DROP DATABASE IF EXISTS "schema1603";
CREATE DATABASE "schema1603";
USE "schema1603";
CREATE TABLE "payment_methods" (
	"id" BIGINT,
	"name" VARCHAR,
	"created_date" TIMESTAMP,
	"updated_date" TIMESTAMP,
	"deleted_date" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "promotions" (
	"id" BIGINT,
	"country_id" BIGINT,
	"plan_id" BIGINT,
	"code" VARCHAR,
	"discount_percent" DECIMAL,
	"start_date" DATE,
	"end_date" DATE,
	"created_date" TIMESTAMP,
	"updated_date" TIMESTAMP,
	"deleted_date" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "country_plans" (
	"id" BIGINT,
	"country_id" BIGINT,
	"plan_id" BIGINT,
	"name" VARCHAR,
	"is_active" BOOLEAN,
	"gross_amount" DECIMAL,
	"play_store_product_id" VARCHAR,
	"created_date" TIMESTAMP,
	"updated_date" TIMESTAMP,
	"deleted_date" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "country_payment_gateways" (
	"id" BIGINT,
	"country_id" BIGINT,
	"payment_gateway_id" BIGINT,
	"created_date" TIMESTAMP,
	"updated_date" TIMESTAMP,
	"deleted_date" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "countries" (
	"id" BIGINT,
	"name" VARCHAR,
	"code" VARCHAR,
	"ddi" INT,
	"currency_id" BIGINT,
	"created_date" TIMESTAMP,
	"updated_date" TIMESTAMP,
	"deleted_date" TIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "plans" (
	"id" BIGINT,
	"name" VARCHAR,
	"months" INTEGER,
	"created_date" TIMESTAMP,
	"updated_date" TIMESTAMP,
	"deleted_date" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "currencies" (
	"id" BIGINT,
	"name" VARCHAR,
	"iso_code" VARCHAR,
	"symbol" VARCHAR,
	"created_date" TIMESTAMP,
	"updated_date" TIMESTAMP,
	"deleted_date" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "payment_statuses" (
	"id" BIGINT,
	"name" VARCHAR,
	"created_date" TIMESTAMP,
	"updated_date" TIMESTAMP,
	"deleted_date" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "payments" (
	"id" BIGINT,
	"uuid" VARCHAR,
	"customer_id" BIGINT,
	"payment_gateway_id" BIGINT,
	"payment_status_id" BIGINT,
	"country_plan_id" BIGINT,
	"currency_id" BIGINT,
	"gross_amount" DECIMAL,
	"promotion_id" BIGINT,
	"promotion_amount" DECIMAL,
	"payment_gateway_payment_method_id" BIGINT,
	"payment_gateway_fee_amount" DECIMAL,
	"payment_gateway_net_amount" DECIMAL,
	"payment_gateway_transaction_id" VARCHAR,
	"payment_gateway_response_date" TIMESTAMP,
	"payment_gateway_response_message" VARCHAR,
	"created_date" TIMESTAMP,
	"updated_date" TIMESTAMP,
	"deleted_date" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "payment_gateways" (
	"id" BIGINT,
	"name" VARCHAR,
	"inbound_token" VARCHAR,
	"outbound_email" VARCHAR,
	"outbound_token" VARCHAR,
	"created_date" TIMESTAMP,
	"updated_date" TIMESTAMP,
	"deleted_date" TIMESTAMP,
	 PRIMARY KEY ("id")
);
