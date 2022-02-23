DROP DATABASE IF EXISTS "schema2310";
CREATE DATABASE "schema2310";
USE "schema2310";
CREATE TABLE "user" (
	"id" BIGINT,
	"created_date" DATETIME,
	"modified_date" DATETIME,
	"email" VARCHAR,
	"name" VARCHAR,
	"picture" VARCHAR,
	"role" VARCHAR
);

CREATE TABLE "review" (
	"id" BIGINT,
	"created_date" DATETIME,
	"modified_date" DATETIME,
	"content" TEXT,
	"rate" INTEGER,
	"title" VARCHAR,
	"product_id" BIGINT,
	"user_id" BIGINT
);

CREATE TABLE "product" (
	"id" BIGINT,
	"created_date" DATETIME,
	"modified_date" DATETIME,
	"description" TEXT,
	"large_category" VARCHAR,
	"limit_count" INTEGER,
	"price" INTEGER,
	"product_name" VARCHAR,
	"product_status" INTEGER,
	"purchase_count" INTEGER,
	"rate_avg" INTEGER,
	"sale_rate" INTEGER,
	"shipping_cost" INTEGER,
	"shipping_due_date" INTEGER,
	"title_img" VARCHAR,
	"total_count" INTEGER,
	"user_id" BIGINT
);

CREATE TABLE "cart" (
	"id" BIGINT,
	"created_date" DATETIME,
	"modified_date" DATETIME,
	"product_count" INTEGER,
	"product_id" BIGINT,
	"user_id" BIGINT
);
