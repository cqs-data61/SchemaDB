DROP DATABASE IF EXISTS "schema2159";
CREATE DATABASE "schema2159";
USE "schema2159";
CREATE TABLE "product" (
	"product_id" INT,
	"title" VARCHAR,
	"description" LONGTEXT,
	"price" VARCHAR,
	"quantity" VARCHAR,
	"image" LONGTEXT
);

CREATE TABLE "cart" (
	"id" INT,
	"product_id" INT,
	 CONSTRAINT "fkeycon_cart_to_product" FOREIGN KEY ("product_id") REFERENCES "product" ("product_id")
);
