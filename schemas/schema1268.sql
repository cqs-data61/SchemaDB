DROP DATABASE IF EXISTS "schema1268";
CREATE DATABASE "schema1268";
USE "schema1268";
CREATE TABLE "vine_table" (
	"review_id" TEXT,
	"review_id" TEXT,
	"star_rating" INTEGER,
	"star_rating" INTEGER,
	"helpful_votes" INTEGER,
	"helpful_votes" INTEGER,
	"total_votes" INTEGER,
	"total_votes" INTEGER,
	"vine" TEXT,
	"vine" TEXT,
	 PRIMARY KEY ("review_id")
);

CREATE TABLE "customers" (
	"customer_id" INT,
	"customer_id" INT,
	"customer_count" INT,
	"customer_count" INT
);

CREATE TABLE "products" (
	"product_id" TEXT,
	"product_id" TEXT,
	"product_title" TEXT,
	"product_title" TEXT
);

CREATE TABLE "review_id_table" (
	"review_id" TEXT,
	"customer_id" INTEGER,
	"product_id" TEXT,
	"product_parent" INTEGER,
	"review_date" DATE
);
