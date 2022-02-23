DROP DATABASE IF EXISTS "schema1233";
CREATE DATABASE "schema1233";
USE "schema1233";
CREATE TABLE "ingredients" (
	"id" SERIAL,
	"name" VARCHAR,
	"density" REAL,
	 PRIMARY KEY ("id")
);

CREATE TABLE "recipes" (
	"id" SERIAL,
	"name" VARCHAR,
	"created_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "instructions" (
	"recipe_id" INT,
	"ordinal" INT,
	"instruction" VARCHAR,
	 PRIMARY KEY ("recipe_id","ordinal"),
	 CONSTRAINT "fkeycon_instructions_to_recipes" FOREIGN KEY ("recipe_id") REFERENCES "recipes" ("id")
);

CREATE TABLE "recipe_ingredients" (
	"recipe_id" INT,
	"ordinal" INT,
	"ingredient_id" INT,
	"amount" REAL,
	"type" ENUM,
	"notes" VARCHAR,
	 PRIMARY KEY ("recipe_id","ordinal"),
	 CONSTRAINT "fkeycon_recipe_ingredients_to_ingredients" FOREIGN KEY ("ingredient_id") REFERENCES "ingredients" ("id"),
	 CONSTRAINT "fkeycon_recipe_ingredients_to_recipes" FOREIGN KEY ("recipe_id") REFERENCES "recipes" ("id")
);
