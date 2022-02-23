DROP DATABASE IF EXISTS "schema1942";
CREATE DATABASE "schema1942";
USE "schema1942";
CREATE TABLE "product" (
	"product_id" INT,
	"title" VARCHAR,
	"description" LONGTEXT,
	"price" VARCHAR,
	"image" LONGBLOB
);

CREATE TABLE "cart" (
	"id" INT,
	"product_id" INT,
	 CONSTRAINT "fkeycon_cart_to_product" FOREIGN KEY ("product_id") REFERENCES "product" ("product_id")
);
