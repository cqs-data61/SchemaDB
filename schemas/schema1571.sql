DROP DATABASE IF EXISTS "schema1571";
CREATE DATABASE "schema1571";
USE "schema1571";
CREATE TABLE "configuration" (
	"id" VARCHAR,
	"ml_commission_percentage" NUMERIC,
	"ml_gain_percentage" NUMERIC,
	"deleted_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "mercado_libre_categories" (
	"id" VARCHAR,
	"name" VARCHAR,
	"parent_id" VARCHAR,
	"childs" INTEGER,
	"deleted_at" DATETIME,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "mercado_libre_parent_categories_id" FOREIGN KEY ("parent_id") REFERENCES "mercado_libre_categories" ("id")
);

CREATE TABLE "users" (
	"id" VARCHAR,
	"email_address" VARCHAR,
	"password" VARCHAR,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"full_name" VARCHAR,
	"role" VARCHAR,
	"address" VARCHAR,
	"city" VARCHAR,
	"telephone" VARCHAR,
	"zipcode" NUMERIC,
	"state" NUMERIC,
	"provider" VARCHAR,
	"deleted_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "categories" (
	"id" VARCHAR,
	"name" VARCHAR,
	"url" VARCHAR,
	"ml_category_id" VARCHAR,
	"deleted_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "products" (
	"id" VARCHAR,
	"category_id" VARCHAR,
	"name" VARCHAR,
	"description" VARCHAR,
	"url" VARCHAR,
	"show_format" BOOLEAN,
	"ml_category_id" VARCHAR,
	"is_visible" BOOLEAN,
	"is_offer" BOOLEAN,
	"deleted_at" DATETIME,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "product_category_id_fkey" FOREIGN KEY ("category_id") REFERENCES "categories" ("id")
);

CREATE TABLE "products_pictures" (
	"id" VARCHAR,
	"product_id" VARCHAR,
	"mime_type" VARCHAR,
	"deleted_at" DATETIME,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "products_pictures_product_id_fkey" FOREIGN KEY ("product_id") REFERENCES "products" ("id")
);

CREATE TABLE "posters" (
	"id" VARCHAR,
	"position" INTEGER,
	"content_type" VARCHAR,
	"last_update" DATETIME,
	"category_id" VARCHAR,
	"product_id" VARCHAR,
	"caption" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "posters_product_id_fkey" FOREIGN KEY ("product_id") REFERENCES "products" ("id"),
	 CONSTRAINT "posters_category_id_fkey" FOREIGN KEY ("category_id") REFERENCES "categories" ("id")
);

CREATE TABLE "providers" (
	"id" VARCHAR,
	"name" VARCHAR,
	"url" VARCHAR,
	"percentage" NUMERIC,
	"deleted_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "packaging" (
	"id" VARCHAR,
	"product_id" VARCHAR,
	"provider_id" VARCHAR,
	"provider_product_id" VARCHAR,
	"name" VARCHAR,
	"price" DOUBLE PRECISION,
	"ml_product_id" VARCHAR,
	"import_order" INTEGER,
	"deleted_at" DATETIME,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "packaging_product_id_fkey" FOREIGN KEY ("product_id") REFERENCES "products" ("id"),
	 CONSTRAINT "packaging_provider_id_fkey" FOREIGN KEY ("provider_id") REFERENCES "providers" ("id")
);
