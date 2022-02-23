DROP DATABASE IF EXISTS "schema523";
CREATE DATABASE "schema523";
USE "schema523";
CREATE TABLE "products" (
	"id" INT,
	"name" VARCHAR,
	"slogan" VARCHAR,
	"description" VARCHAR,
	"category" VARCHAR,
	"default_price" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "related" (
	"id" INT,
	"product_id" INT,
	"related_product_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_related" FOREIGN KEY ("product_id") REFERENCES "products" ("id")
);

CREATE TABLE "styles" (
	"style_id" INT,
	"product_id" INT,
	"style_name" VARCHAR,
	"original_price" VARCHAR,
	"sale_price" VARCHAR,
	"default_style" INT,
	 PRIMARY KEY ("style_id"),
	 CONSTRAINT "fk_styles" FOREIGN KEY ("product_id") REFERENCES "products" ("id")
);

CREATE TABLE "photos" (
	"photo_id" INT,
	"style_id" INT,
	"url" VARCHAR,
	"thumbnail_url" VARCHAR,
	 CONSTRAINT "fk_photos" FOREIGN KEY ("style_id") REFERENCES "styles" ("style_id")
);

CREATE TABLE "skus" (
	"skus_id" INT,
	"style_id" INT,
	"size" VARCHAR,
	"quantity" INT,
	 PRIMARY KEY ("skus_id"),
	 CONSTRAINT "fk_skus" FOREIGN KEY ("style_id") REFERENCES "styles" ("style_id")
);

CREATE TABLE "features" (
	"feature_id" INT,
	"product_id" INT,
	"feature_name" VARCHAR,
	"value" VARCHAR,
	 PRIMARY KEY ("feature_id"),
	 CONSTRAINT "fk_features" FOREIGN KEY ("product_id") REFERENCES "products" ("id")
);
