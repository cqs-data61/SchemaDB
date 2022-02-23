DROP DATABASE IF EXISTS "schema2243";
CREATE DATABASE "schema2243";
USE "schema2243";
CREATE TABLE "tags" (
	"id" SERIAL,
	"tag" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "asset_tags" (
	"id" SERIAL,
	"asset_id" VARCHAR,
	"tag_id" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "transactions" (
	"id" SERIAL,
	"asset_item_id" VARCHAR,
	"buyer_id" VARCHAR,
	"seller_id" VARCHAR,
	"trans_type" VARCHAR,
	"payment_method" VARCHAR,
	"sale_price" NUMERIC,
	"royalty_price" NUMERIC,
	"tax_price" NUMERIC,
	"site_fee" NUMERIC,
	"trans_fee" NUMERIC,
	"created_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "assets" (
	"id" SERIAL,
	"title" VARCHAR,
	"asset_description" TEXT,
	"asset_image" TEXT,
	"creator_id" INTEGER,
	"owner_id" INTEGER,
	"size" VARCHAR,
	"likes" INT,
	"views" INT,
	"category" VARCHAR,
	"created_at" TIMESTAMP,
	"list_price" NUMERIC,
	"high_bid" NUMERIC,
	"offers_made" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"id" SERIAL,
	"username" VARCHAR,
	"email" VARCHAR,
	"user_password" VARCHAR,
	"creator" BOOLEAN,
	"avatar" TEXT,
	"created_at" TIMESTAMP,
	"token_version" INT,
	 PRIMARY KEY ("id")
);
