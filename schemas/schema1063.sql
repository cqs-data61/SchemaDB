DROP DATABASE IF EXISTS "schema1063";
CREATE DATABASE "schema1063";
USE "schema1063";
CREATE TABLE "products" (
	"product_id" INT,
	"product_name" VARCHAR,
	"slogan" VARCHAR,
	"product_description" VARCHAR,
	"category" VARCHAR,
	"default_price" VARCHAR,
	 PRIMARY KEY ("product_id")
);

CREATE TABLE "related" (
	"related_id" INT,
	"current_product_id" INT,
	"related_product_id" INT,
	 PRIMARY KEY ("related_id"),
	 CONSTRAINT "fk_current_product" FOREIGN KEY ("current_product_id") REFERENCES "products" ("product_id"),
	 CONSTRAINT "fk_related_product" FOREIGN KEY ("related_product_id") REFERENCES "products" ("product_id")
);

CREATE TABLE "styles" (
	"style_id" INT,
	"product_id" INT,
	"style_name" VARCHAR,
	"sale_price" VARCHAR,
	"original_price" VARCHAR,
	"default_style" TINYINT,
	 PRIMARY KEY ("style_id"),
	 CONSTRAINT "fk_product_styles" FOREIGN KEY ("product_id") REFERENCES "products" ("product_id")
);

CREATE TABLE "skus" (
	"sku_id" INT,
	"style_id" INT,
	"size" VARCHAR,
	"quantity" INT,
	 PRIMARY KEY ("sku_id"),
	 CONSTRAINT "fk_style_skus" FOREIGN KEY ("style_id") REFERENCES "styles" ("style_id")
);

CREATE TABLE "photos" (
	"photo_id" INT,
	"style_id" INT,
	"photo_url" VARCHAR,
	"thumbnail_url" VARCHAR,
	 PRIMARY KEY ("photo_id"),
	 CONSTRAINT "fk_style_photos" FOREIGN KEY ("style_id") REFERENCES "styles" ("style_id")
);

CREATE TABLE "features" (
	"feature_id" INT,
	"product_id" INT,
	"feature" VARCHAR,
	"feature_value" VARCHAR,
	 PRIMARY KEY ("feature_id"),
	 CONSTRAINT "fk_product_features" FOREIGN KEY ("product_id") REFERENCES "products" ("product_id")
);
