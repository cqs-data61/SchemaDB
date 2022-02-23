DROP DATABASE IF EXISTS "schema962";
CREATE DATABASE "schema962";
USE "schema962";
CREATE TABLE "product" (
	"id" INT,
	"name" VARCHAR,
	"slogan" VARCHAR,
	"description" VARCHAR,
	"category" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "style" (
	"id" INT,
	"product_id" INT,
	"_default" TINYINT,
	"name" VARCHAR,
	"original_price" VARCHAR,
	"sale_price" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_style_to_product" FOREIGN KEY ("product_id") REFERENCES "product" ("id")
);

CREATE TABLE "stylephotos" (
	"id" INT,
	"style_id" INT,
	"url" VARCHAR,
	"thumbnail_url" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_stylephotos_to_style" FOREIGN KEY ("style_id") REFERENCES "style" ("id")
);

CREATE TABLE "stylesku" (
	"id" INT,
	"style_id" INT,
	"size" VARCHAR,
	"quantity" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_stylesku_to_style" FOREIGN KEY ("style_id") REFERENCES "style" ("id")
);

CREATE TABLE "relatedproducts" (
	"id" INT,
	"product_id" INT,
	"relatedproductid" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_relatedproducts_to_product" FOREIGN KEY ("product_id") REFERENCES "product" ("id")
);

CREATE TABLE "features" (
	"id" INT,
	"product_id" INT,
	"feature" VARCHAR,
	"value" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_features_to_product" FOREIGN KEY ("product_id") REFERENCES "product" ("id")
);
