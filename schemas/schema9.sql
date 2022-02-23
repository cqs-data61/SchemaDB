DROP DATABASE IF EXISTS "schema9";
CREATE DATABASE "schema9";
USE "schema9";
CREATE TABLE "characteristics_reviews" (
	"id" INT,
	"characteristic_id" INT,
	"review_id" INT,
	"value" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "characteristics" (
	"id" INT,
	"product_id" INT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "photos" (
	"id" INT,
	"review_id" INT,
	"url" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "reviews" (
	"id" INT,
	"product_id" INT,
	"rating" INT,
	"date" VARCHAR,
	"summary" VARCHAR,
	"body" VARCHAR,
	"recommend" VARCHAR,
	"reported" VARCHAR,
	"reviewer_name" VARCHAR,
	"reviewer_email" VARCHAR,
	"response" VARCHAR,
	"helpfulness" INT,
	 PRIMARY KEY ("id")
);
