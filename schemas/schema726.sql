DROP DATABASE IF EXISTS "schema726";
CREATE DATABASE "schema726";
USE "schema726";
CREATE TABLE "users" (
	"id" BIGINT,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"email" VARCHAR,
	"email_verified_at" TIMESTAMP,
	"role" INT,
	"status" INT,
	"password" VARCHAR,
	"image" VARCHAR,
	"job_title" VARCHAR,
	"description" TEXT,
	"phone" VARCHAR,
	"facebook" VARCHAR,
	"twitter" VARCHAR,
	"instagram" VARCHAR,
	"youtube" VARCHAR,
	"remember_token" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "testimonials" (
	"id" INT,
	"name" VARCHAR,
	"job_title" VARCHAR,
	"description" TEXT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "story_categories" (
	"id" INT,
	"category_id" BIGINT,
	"story_id" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "stories" (
	"id" INT,
	"slug" VARCHAR,
	"name" VARCHAR,
	"description" TEXT,
	"type" INT,
	"user_id" BIGINT,
	"image" VARCHAR,
	"reading_side" INT,
	"other_names" TEXT,
	"translated_by" TEXT,
	"origin" VARCHAR,
	"status" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "rates" (
	"id" BIGINT,
	"ip" VARCHAR,
	"rate" DOUBLE,
	"story_id" INT,
	"user_id" BIGINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "password_resets" (
	"email" VARCHAR,
	"token" VARCHAR,
	"created_at" TIMESTAMP
);

CREATE TABLE "parts_photos" (
	"id" INT,
	"part_id" INT,
	"photo" VARCHAR,
	"order_photo" INT
);

CREATE TABLE "parts" (
	"id" INT,
	"inner_id" INT,
	"name" VARCHAR,
	"description" TEXT,
	"image" VARCHAR,
	"story_id" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "pages" (
	"id" BIGINT,
	"slug" VARCHAR,
	"page_name" VARCHAR,
	"image" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "migrations" (
	"id" INT,
	"migration" VARCHAR,
	"batch" INT
);

CREATE TABLE "favorites" (
	"id" INT,
	"user_id" INT,
	"story_id" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
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

CREATE TABLE "comments" (
	"id" BIGINT,
	"email" VARCHAR,
	"name" VARCHAR,
	"body" VARCHAR,
	"phone" VARCHAR,
	"story_id" INT,
	"user_id" BIGINT,
	"status" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "categories" (
	"id" BIGINT,
	"name" VARCHAR,
	"image" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);
