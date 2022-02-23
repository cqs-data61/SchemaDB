DROP DATABASE IF EXISTS "schema1300";
CREATE DATABASE "schema1300";
USE "schema1300";
CREATE TABLE "related" (
	"id" SERIAL,
	"current_product_id" INTEGER,
	"related_product_id" INTEGER
);

CREATE TABLE "photos" (
	"id" SERIAL,
	"styleid" INTEGER,
	"url" TEXT,
	"thumbnail_url" TEXT
);

CREATE TABLE "skus" (
	"id" SERIAL,
	"styleid" INTEGER,
	"size" TEXT,
	"quantity" INTEGER
);

CREATE TABLE "styles" (
	"style_id" SERIAL,
	"product_id" INTEGER,
	"name" TEXT,
	"sale_price" TEXT,
	"original_price" TEXT,
	"default_style" BOOLEAN,
	 PRIMARY KEY ("style_id")
);

CREATE TABLE "features" (
	"id" SERIAL,
	"product_id" INTEGER,
	"feature" VARCHAR,
	"value" VARCHAR
);

CREATE TABLE "products" (
	"id" SERIAL,
	"name" VARCHAR,
	"slogan" TEXT,
	"description" TEXT,
	"category" VARCHAR,
	"default_price" DECIMAL
);
