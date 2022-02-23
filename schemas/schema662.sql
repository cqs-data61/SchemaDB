DROP DATABASE IF EXISTS "schema662";
CREATE DATABASE "schema662";
USE "schema662";
CREATE TABLE "users" (
	"id" INT,
	"username" VARCHAR,
	"email" VARCHAR,
	"provider_id" VARCHAR,
	"avatar" VARCHAR,
	"password" VARCHAR,
	"user_role" INT,
	"status" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "testimonials" (
	"id" INT,
	"description" TEXT,
	"images" VARCHAR,
	"name" VARCHAR,
	"designation" VARCHAR,
	"status" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "sub_categories" (
	"id" INT,
	"title" VARCHAR,
	"parent_category" VARCHAR,
	"status" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "services" (
	"id" INT,
	"title" VARCHAR,
	"images" VARCHAR,
	"description" TEXT,
	"status" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "schedule" (
	"id" INT,
	"fullname" VARCHAR,
	"email" VARCHAR,
	"payment_id" VARCHAR,
	"phone_no" VARCHAR,
	"address" VARCHAR,
	"country" VARCHAR,
	"city" VARCHAR,
	"state" VARCHAR,
	"zip" VARCHAR,
	"status" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "product_images" (
	"id" INT,
	"title" VARCHAR,
	"product_id" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "products" (
	"id" INT,
	"sub_categories" INT,
	"title" VARCHAR,
	"description" TEXT,
	"price" FLOAT,
	"stock" INT,
	"sku" VARCHAR,
	"slug" VARCHAR,
	"is_featured" INT,
	"is_discounted" INT,
	"discounted_price" FLOAT,
	"discounted_percentage" INT,
	"has_variations" INT,
	"status" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"deleted_at" TIMESTAMP
);

CREATE TABLE "orders" (
	"id" INT,
	"user_id" INT,
	"membership_id" INT,
	"payment_id" VARCHAR,
	"status" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "membership" (
	"id" INT,
	"title" VARCHAR,
	"sub_heading" VARCHAR,
	"price" FLOAT,
	"description" TEXT,
	"status" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "contact" (
	"id" INT,
	"name" VARCHAR,
	"email" VARCHAR,
	"phone" VARCHAR,
	"message" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "config" (
	"id" INT,
	"email" VARCHAR,
	"phone" VARCHAR,
	"currency" VARCHAR,
	"address" VARCHAR,
	"fb_link" VARCHAR,
	"twitter_link" VARCHAR,
	"insta_link" VARCHAR,
	"linkedin_link" VARCHAR,
	"copyright" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "cms" (
	"id" INT,
	"page" VARCHAR,
	"title" VARCHAR,
	"sub_heading" TEXT,
	"description_1" TEXT,
	"description_2" TEXT,
	"image_1" VARCHAR,
	"image_2" VARCHAR,
	"video_1" VARCHAR,
	"video_2" VARCHAR,
	"status" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "categories" (
	"id" INT,
	"title" VARCHAR,
	"images" TEXT,
	"status" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "blogs" (
	"id" INT,
	"title" VARCHAR,
	"description" TEXT,
	"images" VARCHAR,
	"author" INT,
	"status" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "banners" (
	"id" INT,
	"title" VARCHAR,
	"description" TEXT,
	"images" VARCHAR,
	"status" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "appointments" (
	"id" INT,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"phone_no" INT,
	"email" VARCHAR,
	"subject" VARCHAR,
	"company" VARCHAR,
	"message" TEXT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);
