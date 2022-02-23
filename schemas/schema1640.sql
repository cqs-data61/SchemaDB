DROP DATABASE IF EXISTS "schema1640";
CREATE DATABASE "schema1640";
USE "schema1640";
CREATE TABLE "vine_table" (
	"review_id" TEXT,
	"star_rating" INTEGER,
	"helpful_votes" INTEGER,
	"total_votes" INTEGER,
	"vine" TEXT,
	 PRIMARY KEY ("review_id")
);

CREATE TABLE "customers" (
	"customer_id" INT,
	"customer_count" INT,
	 PRIMARY KEY ("customer_id")
);

CREATE TABLE "products" (
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
