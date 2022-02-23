DROP DATABASE IF EXISTS "schema2188";
CREATE DATABASE "schema2188";
USE "schema2188";
CREATE TABLE "vendors" (
	"id" INT,
	"name" VARCHAR,
	"opening_balance" DECIMAL,
	"mobile" VARCHAR,
	"email" VARCHAR,
	"rtn" VARCHAR,
	"region_id" INT,
	"city_id" INT,
	"address" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "users" (
	"id" INT,
	"name" VARCHAR,
	"email" VARCHAR,
	"state" VARCHAR,
	"role" INT,
	"status" INT,
	"email_verified_at" TIMESTAMP,
	"password" VARCHAR,
	"remember_token" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "transection_types" (
	"id" INT,
	"title" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "transection_histories" (
	"id" INT,
	"number" INT,
	"transection_type_id" INT,
	"account_id" INT,
	"description" VARCHAR,
	"amount" DECIMAL,
	"paid" DECIMAL,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "settings" (
	"id" INT,
	"title" VARCHAR,
	"description" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "sale_details" (
	"id" INT,
	"sale_id" INT,
	"product_id" INT,
	"quantity" INT,
	"unit_price" DECIMAL,
	"discount" DECIMAL,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "sales" (
	"id" INT,
	"pay_date" DATE,
	"customer_id" INT,
	"status" TINYINT,
	"type" VARCHAR,
	"paid_amount" DECIMAL,
	"total_amount" DECIMAL,
	"ordered_uuid" VARCHAR,
	"ordered_uuid_cost" VARCHAR,
	"discount" DECIMAL,
	"extra_discount" DECIMAL,
	"remarks" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "regions" (
	"id" INT,
	"name" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "purchase_details" (
	"id" INT,
	"purchase_id" INT,
	"product_id" INT,
	"quantity" INT,
	"unit_price" DECIMAL,
	"sale_price" DECIMAL,
	"discount" DECIMAL,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "purchases" (
	"id" INT,
	"pay_date" DATE,
	"vendor_id" INT,
	"status" TINYINT,
	"type" VARCHAR,
	"paid_amount" DECIMAL,
	"total_amount" DECIMAL,
	"ordered_uuid" VARCHAR,
	"discount" DECIMAL,
	"extra_discount" DECIMAL,
	"remarks" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "products" (
	"id" INT,
	"name" VARCHAR,
	"category_id" INT,
	"picture" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "password_resets" (
	"email" VARCHAR,
	"token" VARCHAR,
	"created_at" TIMESTAMP
);

CREATE TABLE "migrations" (
	"id" INT,
	"migration" VARCHAR,
	"batch" INT
);

CREATE TABLE "journals" (
	"id" INT,
	"journal_uuid" VARCHAR,
	"transection_type_id" INT,
	"s_p_am_id" INT,
	"s_p_am_type" INT,
	"account_id" INT,
	"account_type_id" INT,
	"advance_reverse" TINYINT,
	"amount" DECIMAL,
	"description" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "failed_jobs" (
	"id" INT,
	"connection" TEXT,
	"queue" TEXT,
	"payload" LONGTEXT,
	"exception" LONGTEXT,
	"failed_at" TIMESTAMP
);

CREATE TABLE "customers" (
	"id" INT,
	"name" VARCHAR,
	"opening_balance" DECIMAL,
	"mobile" VARCHAR,
	"email" VARCHAR,
	"rtn" VARCHAR,
	"address" VARCHAR,
	"region_id" INT,
	"city_id" INT,
	"ordered_uuid" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "cities" (
	"id" INT,
	"name" VARCHAR,
	"region_id" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "categories" (
	"id" INT,
	"name" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "alis" (
	"id" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "account_types" (
	"id" INT,
	"name" VARCHAR,
	"transection_type_id" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "account_models" (
	"id" INT,
	"name" VARCHAR,
	"model_type" TINYINT,
	"model_type_name" VARCHAR
);

CREATE TABLE "account_management" (
	"id" INT,
	"account_type" INT,
	"account_name" VARCHAR,
	"description" VARCHAR,
	"opening_balance" DECIMAL,
	"status" TINYINT,
	"ordered_uuid" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);
