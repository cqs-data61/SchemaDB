DROP DATABASE IF EXISTS "schema415";
CREATE DATABASE "schema415";
USE "schema415";
CREATE TABLE "recipe_ingredient" (
	"id" INT,
	"recipe_id" INT,
	"ingredient_id" INT
);

CREATE TABLE "recipe" (
	"id" INT,
	"name" VARCHAR
);

CREATE TABLE "ingredient" (
	"id" INT,
	"name" VARCHAR
);
