DROP DATABASE IF EXISTS "schema2013";
CREATE DATABASE "schema2013";
USE "schema2013";
CREATE TABLE "users" (
	"user_id" BIGINT,
	"name" VARCHAR,
	"email" VARCHAR,
	"mobile_no" VARCHAR,
	"photo" VARCHAR,
	"role_id" BIGINT,
	"email_verified_at" TIMESTAMP,
	"google_id" VARCHAR,
	"password" VARCHAR,
	"remember_token" VARCHAR,
	"status" TINYINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("user_id")
);

CREATE TABLE "roles" (
	"roles_id" BIGINT,
	"name" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("roles_id")
);

CREATE TABLE "product_weights" (
	"product_weight_id" BIGINT,
	"weight" DOUBLE,
	"weight_unit" VARCHAR,
	"status" TINYINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("product_weight_id")
);

CREATE TABLE "product_sub_categories" (
	"product_sub_category_id" BIGINT,
	"product_sub_category_name" VARCHAR,
	"product_category_id" BIGINT,
	"slug" VARCHAR,
	"status" TINYINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("product_sub_category_id")
);

CREATE TABLE "product_reviews" (
	"product_review_id" BIGINT,
	"product_item_id" BIGINT,
	"user_id" BIGINT,
	"reply_id" BIGINT,
	"review" LONGTEXT,
	"reply" LONGTEXT,
	"status" TINYINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("product_review_id")
);

CREATE TABLE "product_items" (
	"product_item_id" BIGINT,
	"product_sub_category_id" BIGINT,
	"product_item_name" VARCHAR,
	"image" VARCHAR,
	"slug" VARCHAR,
	"product_item_description" LONGTEXT,
	"new_arrival" TINYINT,
	"popular" TINYINT,
	"status" TINYINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("product_item_id")
);

CREATE TABLE "product_infos" (
	"product_info_id" BIGINT,
	"price" DOUBLE,
	"sales_price" DOUBLE,
	"percent" DOUBLE,
	"product_item_id" BIGINT,
	"product_weight_id" BIGINT,
	"product_quantity" INT,
	"sku" VARCHAR,
	"status" TINYINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("product_info_id")
);

CREATE TABLE "product_categories" (
	"product_category_id" BIGINT,
	"product_category_name" VARCHAR,
	"slug" VARCHAR,
	"status" TINYINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("product_category_id")
);

CREATE TABLE "password_resets" (
	"email" VARCHAR,
	"token" VARCHAR,
	"created_at" TIMESTAMP
);

CREATE TABLE "migrations" (
	"id" INT,
	"migration" VARCHAR,
	"batch" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "favorites" (
	"favorite_id" BIGINT,
	"product_info_id" BIGINT,
	"user_id" BIGINT,
	"status" TINYINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("favorite_id")
);

CREATE TABLE "failed_jobs" (
	"id" BIGINT,
	"connection" TEXT,
	"queue" TEXT,
	"payload" LONGTEXT,
	"exception" LONGTEXT,
	"failed_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "districts" (
	"district_id" BIGINT,
	"name" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("district_id")
);

CREATE TABLE "blog_reviews" (
	"blog_review_id" BIGINT,
	"blog_id" BIGINT,
	"user_id" BIGINT,
	"reply_id" BIGINT,
	"review" LONGTEXT,
	"reply" LONGTEXT,
	"status" TINYINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("blog_review_id")
);

CREATE TABLE "blog_categories" (
	"blog_category_id" BIGINT,
	"category_name" VARCHAR,
	"slug" VARCHAR,
	"status" TINYINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("blog_category_id")
);

CREATE TABLE "blogs" (
	"blog_id" BIGINT,
	"blog_category_id" BIGINT,
	"user_id" BIGINT,
	"blog_header" VARCHAR,
	"slug" VARCHAR,
	"full_image" VARCHAR,
	"thumbnail_image" VARCHAR,
	"description" LONGTEXT,
	"post_date" DATE,
	"status" TINYINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("blog_id")
);

CREATE TABLE "addresses" (
	"address_id" BIGINT,
	"name" VARCHAR,
	"mobile_no" VARCHAR,
	"company" VARCHAR,
	"country" VARCHAR,
	"district_id" BIGINT,
	"user_id" BIGINT,
	"city" VARCHAR,
	"zip_code" VARCHAR,
	"house_and_street" VARCHAR,
	"apartment_floor_no" VARCHAR,
	"status" TINYINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("address_id")
);
