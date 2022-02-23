DROP DATABASE IF EXISTS "schema261";
CREATE DATABASE "schema261";
USE "schema261";
CREATE TABLE "users" (
	"id" BIGINT,
	"name" VARCHAR,
	"email" VARCHAR,
	"email_verified_at" TIMESTAMP,
	"password" VARCHAR,
	"remember_token" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "sizes" (
	"id" BIGINT,
	"size" VARCHAR,
	"status" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "product_attr" (
	"id" INT,
	"sku" VARCHAR,
	"pid" INT,
	"image" VARCHAR,
	"mrp" INT,
	"price" INT,
	"size_id" INT,
	"color_id" INT,
	"qty" INT
);

CREATE TABLE "products" (
	"id" BIGINT,
	"category_id" INT,
	"title" VARCHAR,
	"slug" VARCHAR,
	"image" VARCHAR,
	"brand" VARCHAR,
	"model" VARCHAR,
	"desc" TEXT,
	"keywords" TEXT,
	"lead_time" VARCHAR,
	"tax" VARCHAR,
	"tax_type" VARCHAR,
	"is_promo" INT,
	"is_featured" INT,
	"is_discounted" INT,
	"is_trending" INT,
	"status" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "personal_access_tokens" (
	"id" BIGINT,
	"tokenable_type" VARCHAR,
	"tokenable_id" BIGINT,
	"name" VARCHAR,
	"token" VARCHAR,
	"abilities" TEXT,
	"last_used_at" TIMESTAMP,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "password_resets" (
	"email" VARCHAR,
	"token" VARCHAR,
	"created_at" TIMESTAMP
);

CREATE TABLE "multiple_images" (
	"id" INT,
	"pid" INT,
	"image" VARCHAR
);

CREATE TABLE "migrations" (
	"id" INT,
	"migration" VARCHAR,
	"batch" INT
);

CREATE TABLE "failed_jobs" (
	"id" BIGINT,
	"uuid" VARCHAR,
	"connection" TEXT,
	"queue" TEXT,
	"payload" LONGTEXT,
	"exception" LONGTEXT,
	"failed_at" TIMESTAMP
);

CREATE TABLE "customers" (
	"id" BIGINT,
	"name" VARCHAR,
	"email" VARCHAR,
	"password" VARCHAR,
	"mobile" VARCHAR,
	"address" VARCHAR,
	"city" VARCHAR,
	"gstpk" VARCHAR,
	"status" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "coupons" (
	"id" BIGINT,
	"title" VARCHAR,
	"code" VARCHAR,
	"value" VARCHAR,
	"type" ENUM,
	"min_order_am" INT,
	"is_one_time" INT,
	"status" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "colors" (
	"id" BIGINT,
	"color" VARCHAR,
	"status" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "categories" (
	"id" BIGINT,
	"cat_name" VARCHAR,
	"cat_slug" VARCHAR,
	"parent_cat_id" INT,
	"cat_image" VARCHAR,
	"is_header" INT,
	"status" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "brands" (
	"id" BIGINT,
	"name" VARCHAR,
	"image" VARCHAR,
	"is_header" INT,
	"status" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "admins" (
	"id" BIGINT,
	"name" VARCHAR,
	"email" VARCHAR,
	"pass" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);
