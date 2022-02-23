DROP DATABASE IF EXISTS "schema652";
CREATE DATABASE "schema652";
USE "schema652";
CREATE TABLE "filter_ingredient" (
	"filter_id" INT,
	"ingredient_id" INT
);

CREATE TABLE "filter" (
	"id" SERIAL,
	"name" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "recipes_ingredients" (
	"recipe_id" INT,
	"ingredient_id" INT,
	"count" INT
);

CREATE TABLE "recipes" (
	"id" SERIAL,
	"name" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "ingredients" (
	"id" SERIAL,
	"ingredient" TEXT,
	"price" NUMERIC,
	"amount" NUMERIC,
	"measureunit_id" INT,
	"priceperunit" NUMERIC,
	 PRIMARY KEY ("id")
);

CREATE TABLE "measureunit" (
	"id" SERIAL,
	"name" TEXT,
	 PRIMARY KEY ("id")
);
