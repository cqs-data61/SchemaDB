DROP DATABASE IF EXISTS "schema1035";
CREATE DATABASE "schema1035";
USE "schema1035";
CREATE TABLE "reviews_photos" (
	"id" SERIAL,
	"review_id" INT,
	"url" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "reviews" (
	"id" SERIAL,
	"product_id" INT,
	"rating" SMALLINT,
	"date" BIGINT,
	"summary" VARCHAR,
	"body" VARCHAR,
	"recommend" BOOLEAN,
	"reported" BOOLEAN,
	"reviewer_name" VARCHAR,
	"reviewer_email" VARCHAR,
	"response" VARCHAR,
	"helpfulness" INT,
	 PRIMARY KEY ("id")
);
