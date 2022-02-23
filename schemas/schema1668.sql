DROP DATABASE IF EXISTS "schema1668";
CREATE DATABASE "schema1668";
USE "schema1668";
CREATE TABLE "size" (
	"id" INT,
	"size" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "colorway" (
	"id" INT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "feature_value" (
	"id" INT,
	"feature_value" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "feature_name" (
	"id" INT,
	"feature_name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "category" (
	"id" INT,
	"category" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "product" (
	"id" INT,
	"category_id" INT,
	"name" VARCHAR,
	"slogan" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_product_to_category" FOREIGN KEY ("category_id") REFERENCES "category" ("id")
);

CREATE TABLE "style" (
	"id" INT,
	"product_id" INT,
	"colorway_id" INT,
	"sale_price" DECIMAL,
	"original_price" DECIMAL,
	"default_style" TINYINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_style_to_colorway" FOREIGN KEY ("colorway_id") REFERENCES "colorway" ("id"),
	 CONSTRAINT "fkeycon_style_to_product" FOREIGN KEY ("product_id") REFERENCES "product" ("id")
);

CREATE TABLE "photos" (
	"id" INT,
	"style_id" INT,
	"url" VARCHAR,
	"thumbnail_url" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_photos_to_style" FOREIGN KEY ("style_id") REFERENCES "style" ("id")
);

CREATE TABLE "sku" (
	"id" INT,
	"style_id" INT,
	"size_id" INT,
	"quantity" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_sku_to_size" FOREIGN KEY ("size_id") REFERENCES "size" ("id"),
	 CONSTRAINT "fkeycon_sku_to_style" FOREIGN KEY ("style_id") REFERENCES "style" ("id")
);

CREATE TABLE "product_feature" (
	"id" INT,
	"product_id" INT,
	"feature_name" INT,
	"feature_value" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_product_feature_to_feature_value" FOREIGN KEY ("feature_value") REFERENCES "feature_value" ("id"),
	 CONSTRAINT "fkeycon_product_feature_to_product" FOREIGN KEY ("product_id") REFERENCES "product" ("id"),
	 CONSTRAINT "fkeycon_product_feature_to_feature_name" FOREIGN KEY ("feature_name") REFERENCES "feature_name" ("id")
);
