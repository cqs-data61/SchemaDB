DROP DATABASE IF EXISTS "schema1838";
CREATE DATABASE "schema1838";
USE "schema1838";
CREATE TABLE "characteristics" (
	"id" SERIAL,
	"product_id" INT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "reviews" (
	"id" SERIAL,
	"product_id" INT,
	"rating" INT,
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

CREATE TABLE "photos" (
	"id" SERIAL,
	"reviews_id" INT,
	"url" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_photos_reviews_id" FOREIGN KEY ("reviews_id") REFERENCES "reviews" ("id")
);

CREATE TABLE "char_reviews" (
	"id" SERIAL,
	"char_id" INT,
	"reviews_id" INT,
	"value" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_characteristics" FOREIGN KEY ("char_id") REFERENCES "characteristics" ("id"),
	 CONSTRAINT "fk_reviews_id" FOREIGN KEY ("reviews_id") REFERENCES "reviews" ("id")
);
