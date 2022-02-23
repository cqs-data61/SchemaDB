DROP DATABASE IF EXISTS "schema616";
CREATE DATABASE "schema616";
USE "schema616";
CREATE TABLE "skus" (
	"id" INTEGER,
	"stlyes_id" INTEGER,
	"size" VARCHAR,
	"qty" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "photos" (
	"id" INTEGER,
	"url" VARCHAR,
	"style_id" INTEGER,
	"thumbnail_url" BOOLEAN,
	 PRIMARY KEY ("id")
);

CREATE TABLE "relate_product" (
	"id" INTEGER,
	"relate_product_id" INTEGER,
	"product_related_id" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "category" (
	"id" INTEGER,
	"name" VARCHAR,
	"product_id" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "styles" (
	"id" INTEGER,
	"style-name" VARCHAR,
	"price" INTEGER,
	"onsale" BOOLEAN,
	"product_id" INTEGER,
	"default?" BOOLEAN,
	 PRIMARY KEY ("id")
);

CREATE TABLE "product" (
	"id" INTEGER,
	"name" VARCHAR,
	"slogan" VARCHAR,
	"description" VARCHAR,
	"category" VARCHAR,
	"default_price" INT,
	 PRIMARY KEY ("id")
);
