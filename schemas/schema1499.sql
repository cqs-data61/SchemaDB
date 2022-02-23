DROP DATABASE IF EXISTS "schema1499";
CREATE DATABASE "schema1499";
USE "schema1499";
CREATE TABLE "vine_table" (
	"review_id" TEXT,
	"star_rating" INTEGER,
	"helpful_votes" INTEGER,
	"total_votes" INTEGER,
	"vine" TEXT,
	"verified_purchase" TEXT,
	 PRIMARY KEY ("review_id")
);

CREATE TABLE "customers_table" (
	"customer_id" INT,
	"customer_count" INT,
	 PRIMARY KEY ("customer_id")
);

CREATE TABLE "products_table" (
	"product_id" TEXT,
	"product_title" TEXT,
	 PRIMARY KEY ("product_id")
);

CREATE TABLE "review_id_table" (
	"review_id" TEXT,
	"customer_id" INTEGER,
	"product_id" TEXT,
	"product_parent" INTEGER,
	"review_date" DATE,
	 PRIMARY KEY ("review_id")
);
