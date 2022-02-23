DROP DATABASE IF EXISTS "schema1474";
CREATE DATABASE "schema1474";
USE "schema1474";
CREATE TABLE "order_detail" (
	"id" BIGINT,
	"status" VARCHAR,
	"arrival_date" DATETIME,
	"quantity" INT,
	"total_price" DECIMAL,
	"created_at" DATETIME,
	"created_by" VARCHAR,
	"updated_at" DATETIME,
	"updated_by" VARCHAR,
	"order_group_id" BIGINT,
	"item_id" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "order_group" (
	"id" BIGINT,
	"status" VARCHAR,
	"order_type" VARCHAR,
	"rev_address" VARCHAR,
	"rev_name" VARCHAR,
	"payment_type" VARCHAR,
	"total_price" DECIMAL,
	"total_quantity" INT,
	"order_at" DATETIME,
	"arrival_date" DATETIME,
	"created_at" DATETIME,
	"created_by" VARCHAR,
	"updated_at" DATETIME,
	"updated_by" VARCHAR,
	"user_id" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "user" (
	"id" BIGINT,
	"account" VARCHAR,
	"password" VARCHAR,
	"status" VARCHAR,
	"email" VARCHAR,
	"phone_number" VARCHAR,
	"registered_at" DATETIME,
	"unregistered_at" DATETIME,
	"created_at" DATETIME,
	"created_by" VARCHAR,
	"updated_at" DATETIME,
	"updated_by" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "item" (
	"id" BIGINT,
	"status" VARCHAR,
	"name" VARCHAR,
	"title" VARCHAR,
	"content" TEXT,
	"price" DECIMAL,
	"brand_name" VARCHAR,
	"registered_at" VARCHAR,
	"unregistered_at" DATETIME,
	"created_at" DATETIME,
	"created_by" VARCHAR,
	"updated_at" DATETIME,
	"updated_by" VARCHAR,
	"partner_id" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "partner" (
	"id" BIGINT,
	"name" VARCHAR,
	"status" VARCHAR,
	"address" VARCHAR,
	"call_center" VARCHAR,
	"partner_number" VARCHAR,
	"business_number" VARCHAR,
	"ceo_name" VARCHAR,
	"registered_at" DATETIME,
	"unregistered_at" DATETIME,
	"created_at" DATETIME,
	"created_by" VARCHAR,
	"updated_at" DATETIME,
	"updated_by" VARCHAR,
	"category_id" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "category" (
	"id" BIGINT,
	"type" VARCHAR,
	"title" VARCHAR,
	"created_at" DATETIME,
	"created_by" VARCHAR,
	"updated_at" DATETIME,
	"updated_by" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "admin_user" (
	"id" BIGINT,
	"account" VARCHAR,
	"password" VARCHAR,
	"status" VARCHAR,
	"role" VARCHAR,
	"last_login_at" DATETIME,
	"login_fail_count" INT,
	"password_updated_at" DATETIME,
	"registered_at" DATETIME,
	"unregistered_at" DATETIME,
	"created_at" DATETIME,
	"created_by" VARCHAR,
	"updated_at" DATETIME,
	"updated_by" VARCHAR,
	 PRIMARY KEY ("id")
);
