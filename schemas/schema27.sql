DROP DATABASE IF EXISTS "schema27";
CREATE DATABASE "schema27";
USE "schema27";
CREATE TABLE "units_of_measure" (
	"id" SERIAL,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "recipes" (
	"id" SERIAL,
	"title" VARCHAR,
	"created" TIMESTAMP,
	"updated" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "ingredients" (
	"id" SERIAL,
	"amount" NUMERIC,
	"unit_of_measure_id" INTEGER,
	"food_stuff" VARCHAR,
	"recipe_id" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_ingredients_to_units_of_measure" FOREIGN KEY ("unit_of_measure_id") REFERENCES "units_of_measure" ("id"),
	 CONSTRAINT "fkeycon_ingredients_to_recipes" FOREIGN KEY ("recipe_id") REFERENCES "recipes" ("id")
);

CREATE TABLE "instructions" (
	"id" SERIAL,
	"specification" TEXT,
	"list_order" INTEGER,
	"recipe_id" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_instructions_to_recipes" FOREIGN KEY ("recipe_id") REFERENCES "recipes" ("id")
);
