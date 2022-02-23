DROP DATABASE IF EXISTS "schema2449";
CREATE DATABASE "schema2449";
USE "schema2449";
CREATE TABLE "related_products" (
	"id" INTEGER,
	"products_id" INTEGER,
	"related_product_id" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "style_skus" (
	"id" INTEGER,
	"styles_id" INTEGER,
	"skus_id" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "skus" (
	"id" INTEGER,
	"quantity" INTEGER,
	"size" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "photos" (
	"id" INTEGER,
	"thumbnail" VARCHAR,
	"url" VARCHAR,
	"styles_id" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "styles" (
	"id" INTEGER,
	"style_name" VARCHAR,
	"original_price" INTEGER,
	"sale_price" INTEGER,
	"default" TINYINT,
	"products_id" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "features" (
	"id" INTEGER,
	"feature" VARCHAR,
	"value" VARCHAR,
	"products_id" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "products" (
	"id" INTEGER,
	"name" VARCHAR,
	"slogan" VARCHAR,
	"description" VARCHAR,
	"category" VARCHAR,
	"default_price" INTEGER,
	 PRIMARY KEY ("id")
);
