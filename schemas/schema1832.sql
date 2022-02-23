DROP DATABASE IF EXISTS "schema1832";
CREATE DATABASE "schema1832";
USE "schema1832";
CREATE TABLE "users" (
	"id" BIGINT,
	"name" VARCHAR,
	"email" VARCHAR,
	"email_verified_at" TIMESTAMP,
	"password" VARCHAR,
	"remember_token" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"deleted_at" TIMESTAMP
);

CREATE TABLE "tags" (
	"id" BIGINT,
	"name" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "sliders" (
	"id" BIGINT,
	"name" VARCHAR,
	"description" VARCHAR,
	"image_path" VARCHAR,
	"image_name" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"deleted_at" TIMESTAMP
);

CREATE TABLE "settings" (
	"id" BIGINT,
	"config_key" VARCHAR,
	"config_value" TEXT,
	"type" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "role_user" (
	"id" BIGINT,
	"user_id" INT,
	"role_id" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "roles" (
	"id" BIGINT,
	"name" VARCHAR,
	"display_name" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "product_tags" (
	"id" BIGINT,
	"product_id" INT,
	"tag_id" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "product_images" (
	"id" BIGINT,
	"image_name" VARCHAR,
	"image_path" VARCHAR,
	"product_id" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "products" (
	"id" BIGINT,
	"name" VARCHAR,
	"price" VARCHAR,
	"feature_image_path" VARCHAR,
	"feature_image_name" VARCHAR,
	"content" TEXT,
	"user_id" INT,
	"category_id" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"views_count" INT
);

CREATE TABLE "permission_role" (
	"id" BIGINT,
	"role_id" INT,
	"permission_id" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "permissions" (
	"id" BIGINT,
	"name" VARCHAR,
	"display_name" VARCHAR,
	"parent_id" INT,
	"key_code" VARCHAR,
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

CREATE TABLE "menus" (
	"id" BIGINT,
	"name" VARCHAR,
	"parent_id" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"deleted_at" TIMESTAMP
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

CREATE TABLE "categories" (
	"id" BIGINT,
	"name" VARCHAR,
	"parent_id" INT,
	"slug" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"deleted_at" TIMESTAMP
);
