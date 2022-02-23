DROP DATABASE IF EXISTS "schema2236";
CREATE DATABASE "schema2236";
USE "schema2236";
CREATE TABLE "product_info" (
	"product_id" SERIAL,
	"name" VARCHAR,
	"slogan" VARCHAR,
	"description" TEXT,
	"category" VARCHAR,
	"default_price" INT,
	 PRIMARY KEY ("product_id")
);

CREATE TABLE "features" (
	"feature_id" SERIAL,
	"product_id" BIGINT,
	"feature" VARCHAR,
	"value" VARCHAR,
	 PRIMARY KEY ("feature_id"),
	 CONSTRAINT "fkeycon_features_to_product_info" FOREIGN KEY ("product_id") REFERENCES "product_info" ("product_id")
);

CREATE TABLE "styles" (
	"style_id" SERIAL,
	"product_id" BIGINT,
	"name" VARCHAR,
	"sale_price" INT,
	"original_price" INT,
	"if_default" INT,
	 PRIMARY KEY ("style_id"),
	 CONSTRAINT "fkeycon_styles_to_product_info" FOREIGN KEY ("product_id") REFERENCES "product_info" ("product_id")
);

CREATE TABLE "photos" (
	"photo_id" SERIAL,
	"style_id" BIGINT,
	"url" TEXT,
	"thumbnail_url" TEXT,
	 PRIMARY KEY ("photo_id"),
	 CONSTRAINT "fkeycon_photos_to_styles" FOREIGN KEY ("style_id") REFERENCES "styles" ("style_id")
);

CREATE TABLE "skus" (
	"sku_id" SERIAL,
	"style_id" BIGINT,
	"size" VARCHAR,
	"quantity" INT,
	 PRIMARY KEY ("sku_id"),
	 CONSTRAINT "fkeycon_skus_to_styles" FOREIGN KEY ("style_id") REFERENCES "styles" ("style_id")
);
