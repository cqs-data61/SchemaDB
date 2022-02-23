DROP DATABASE IF EXISTS "schema528";
CREATE DATABASE "schema528";
USE "schema528";
CREATE TABLE "drink_ingredients" (
	"id" SERIAL,
	"drink" TEXT,
	"ingredient" TEXT,
	"premods" TEXT,
	"postmods" TEXT,
	"quantity" TEXT,
	"units" TEXT,
	 PRIMARY KEY ("drink","ingredient","premods","postmods")
);

CREATE TABLE "drinks" (
	"drink" TEXT,
	"source" TEXT,
	"glass" TEXT,
	"category" TEXT,
	"alcoholic" BOOLEAN,
	"instructions" TEXT,
	"comments" TEXT,
	"source_avg_rating" NUMERIC,
	"source_rating_count" INTEGER,
	"source_contributor" TEXT,
	"image_s3_bucket" TEXT,
	"image_s3_key" TEXT,
	 PRIMARY KEY ("drink")
);

CREATE TABLE "glasses" (
	"glass" TEXT,
	"source" TEXT,
	"description" TEXT,
	"used_for" TEXT,
	"size" TEXT,
	"image_url" TEXT,
	"image_s3_bucket" TEXT,
	"image_s3_key" TEXT,
	 PRIMARY KEY ("glass")
);

CREATE TABLE "ingredient_sources" (
	"id" SERIAL,
	"ingredient" TEXT,
	"source" TEXT,
	"link" TEXT,
	 PRIMARY KEY ("ingredient","source")
);

CREATE TABLE "ingredients" (
	"ingredient" TEXT,
	"source" TEXT,
	"description" TEXT,
	"category" TEXT,
	"alcohol" NUMERIC,
	"image_url" TEXT,
	"related" TEXT,
	 PRIMARY KEY ("ingredient")
);
