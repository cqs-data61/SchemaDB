DROP DATABASE IF EXISTS "schema1062";
CREATE DATABASE "schema1062";
USE "schema1062";
CREATE TABLE "book_category" (
	"id" BIGINT,
	"category_name" CHARACTER VARYING,
	 PRIMARY KEY ("id")
);

CREATE TABLE "book" (
	"id" BIGINT,
	"active" BOOLEAN,
	"date_created" TIMESTAMP,
	"description" CHARACTER VARYING,
	"image_url" CHARACTER VARYING,
	"name" CHARACTER VARYING,
	"sku" CHARACTER VARYING,
	"unit_price" DOUBLE PRECISION,
	"unit_in_stock" INTEGER,
	"last_updated" TIMESTAMP,
	"category_id" BIGINT,
	 PRIMARY KEY ("id")
);
