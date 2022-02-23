DROP DATABASE IF EXISTS "schema1564";
CREATE DATABASE "schema1564";
USE "schema1564";
CREATE TABLE "product_reviews" (
	"id" INT,
	"product_id" INT,
	"rating" TINYINT,
	"date_reviewed" DATETIME,
	"summary" VARCHAR,
	"body" VARCHAR,
	"recommend" VARCHAR,
	"reported" VARCHAR,
	"reviewer_name" VARCHAR,
	"email" VARCHAR,
	"response" VARCHAR,
	"helpfulness" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "photos" (
	"id" INT,
	"review_id" INT,
	"photo_url" VARCHAR,
	 CONSTRAINT "fkeycon_photos_to_product_reviews" FOREIGN KEY ("review_id") REFERENCES "product_reviews" ("id")
);

CREATE TABLE "characteristics_products" (
	"id" INT,
	"product_id" INT,
	"characteristic" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "review_characteristics" (
	"id" INT,
	"characteristic_id" INT,
	"review_id" INT,
	"characteristic_value" INT,
	 CONSTRAINT "fkeycon_review_characteristics_to_characteristics_products" FOREIGN KEY ("characteristic_id") REFERENCES "characteristics_products" ("id")
);
