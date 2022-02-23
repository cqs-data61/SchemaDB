DROP DATABASE IF EXISTS "schema2313";
CREATE DATABASE "schema2313";
USE "schema2313";
CREATE TABLE "vine_table" (
	"review_id" TEXT,
	"star_rating" INTEGER,
	"helpful_votes" INTEGER,
	"total_votes" INTEGER,
	"vine" TEXT,
	"batch_id" INTEGER,
	 PRIMARY KEY ("review_id")
);

CREATE TABLE "reviews" (
	"review_id" TEXT,
	"verified_purchase" TEXT,
	"review_headline" TEXT,
	"review_body" TEXT,
	"batch_id" INTEGER,
	 PRIMARY KEY ("review_id")
);

CREATE TABLE "customers" (
	"customer_id" TEXT,
	"customer_count" INT,
	"batch_id" INTEGER,
	 PRIMARY KEY ("customer_id","batch_id")
);

CREATE TABLE "products" (
	"product_id" TEXT,
	"product_title" TEXT,
	"product_category" TEXT,
	"batch_id" INTEGER,
	 PRIMARY KEY ("product_id","batch_id")
);

CREATE TABLE "review_id_table" (
	"review_id" TEXT,
	"customer_id" TEXT,
	"product_id" TEXT,
	"product_parent" TEXT,
	"review_date" DATE,
	"batch_id" INTEGER,
	 PRIMARY KEY ("review_id")
);
