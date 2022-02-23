DROP DATABASE IF EXISTS "schema2282";
CREATE DATABASE "schema2282";
USE "schema2282";
CREATE TABLE "categories" (
	"id" INT,
	"parent_id" INT,
	"category_name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "shippings" (
	"transaction_evidence_id" BIGINT,
	"status" ENUM,
	"item_name" VARCHAR,
	"item_id" BIGINT,
	"reserve_id" VARCHAR,
	"reserve_time" BIGINT,
	"to_address" VARCHAR,
	"to_name" VARCHAR,
	"from_address" VARCHAR,
	"from_name" VARCHAR,
	"img_binary" MEDIUMBLOB,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("transaction_evidence_id")
);

CREATE TABLE "transaction_evidences" (
	"id" BIGINT,
	"seller_id" BIGINT,
	"buyer_id" BIGINT,
	"status" ENUM,
	"item_id" BIGINT,
	"item_name" VARCHAR,
	"item_price" INT,
	"item_description" TEXT,
	"item_category_id" INT,
	"item_root_category_id" INT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "items" (
	"id" BIGINT,
	"seller_id" BIGINT,
	"buyer_id" BIGINT,
	"status" ENUM,
	"name" VARCHAR,
	"price" INT,
	"description" TEXT,
	"image_name" VARCHAR,
	"category_id" INT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"id" BIGINT,
	"account_name" VARCHAR,
	"hashed_password" VARBINARY,
	"address" VARCHAR,
	"num_sell_items" INT,
	"last_bump" DATETIME,
	"created_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "configs" (
	"name" VARCHAR,
	"val" VARCHAR,
	 PRIMARY KEY ("name")
);
