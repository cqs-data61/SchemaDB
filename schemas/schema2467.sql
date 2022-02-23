DROP DATABASE IF EXISTS "schema2467";
CREATE DATABASE "schema2467";
USE "schema2467";
CREATE TABLE "product_styles" (
	"id" INT,
	"name" VARCHAR,
	"original_price" VARCHAR,
	"sale_price" VARCHAR,
	"default_style" TINYINT,
	"product_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "photos" (
	"id" INTEGER,
	"thumbnail_url" VARCHAR,
	"url" VARCHAR,
	"style_id" INT,
	"product_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_photos_to_product_styles" FOREIGN KEY ("style_id") REFERENCES "product_styles" ("id")
);

CREATE TABLE "skus" (
	"id" INT,
	"quantity" INTEGER,
	"size" VARCHAR,
	"style_id" INT,
	"product_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_skus_to_product_styles" FOREIGN KEY ("style_id") REFERENCES "product_styles" ("id")
);
