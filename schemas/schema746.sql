DROP DATABASE IF EXISTS "schema746";
CREATE DATABASE "schema746";
USE "schema746";
CREATE TABLE "charactername" (
	"id" SERIAL,
	"product_id" INTEGER,
	"name" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "characteristics" (
	"char_id" SERIAL,
	"characteristic_id" INTEGER,
	"review_id" INTEGER,
	"value" INTEGER,
	 PRIMARY KEY ("char_id")
);

CREATE TABLE "photos" (
	"photo_id" SERIAL,
	"review_id" INTEGER,
	"url" TEXT,
	 PRIMARY KEY ("photo_id")
);

CREATE TABLE "reviews" (
	"review_id" SERIAL,
	"product_id" INTEGER,
	"rating" INTEGER,
	"date" VARCHAR,
	"summary" VARCHAR,
	"body" VARCHAR,
	"recommend" BOOLEAN,
	"reported" BOOLEAN,
	"reviewer_name" VARCHAR,
	"reviewer_email" VARCHAR,
	"response" VARCHAR,
	"helpfulness" INTEGER,
	 PRIMARY KEY ("review_id")
);
