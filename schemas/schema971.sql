DROP DATABASE IF EXISTS "schema971";
CREATE DATABASE "schema971";
USE "schema971";
CREATE TABLE "ingredients" (
	"ingredient_id" INT,
	"ingredient_name" VARCHAR,
	 PRIMARY KEY ("ingredient_id")
);

CREATE TABLE "recipes" (
	"recipe_id" INT,
	"preparation" VARCHAR,
	"recipe_name" VARCHAR,
	"prep_time" INT,
	"cook_time" INT,
	"recipe_type" VARCHAR,
	"recipe_img" VARCHAR,
	 PRIMARY KEY ("recipe_id")
);

CREATE TABLE "recipe_ingredients" (
	"ingredient_id" INT,
	"recipe_id" INT,
	"measurement_unit" VARCHAR,
	"measurement_amount" NUMERIC,
	 CONSTRAINT "fk_recipe_ingredients_ingredients" FOREIGN KEY ("ingredient_id") REFERENCES "ingredients" ("ingredient_id"),
	 CONSTRAINT "fk_recipe_ingredients_recipes" FOREIGN KEY ("recipe_id") REFERENCES "recipes" ("recipe_id")
);

CREATE TABLE "users" (
	"user_id" INT,
	"username" VARCHAR,
	"password_hash" VARCHAR,
	"role" VARCHAR,
	 PRIMARY KEY ("user_id")
);

CREATE TABLE "user_recipes" (
	"recipe_id" SERIAL,
	"user_id" INT,
	 PRIMARY KEY ("recipe_id","user_id"),
	 CONSTRAINT "fk_user_recipes_users" FOREIGN KEY ("user_id") REFERENCES "users" ("user_id"),
	 CONSTRAINT "fk_user_recipes_recipes" FOREIGN KEY ("recipe_id") REFERENCES "recipes" ("recipe_id")
);

CREATE TABLE "user_meal_plan" (
	"meal_plan_id" INT,
	"user_id" INT,
	"meal_plan_name" VARCHAR,
	 PRIMARY KEY ("meal_plan_id"),
	 CONSTRAINT "fk_user_meal_plan_users" FOREIGN KEY ("user_id") REFERENCES "users" ("user_id")
);

CREATE TABLE "meal_plan_user_recipes" (
	"meal_plan_id" SERIAL,
	"recipe_id" SERIAL,
	"day" VARCHAR,
	"meal" VARCHAR,
	 CONSTRAINT "fk_meal_plan_user_recipe_recipes" FOREIGN KEY ("recipe_id") REFERENCES "recipes" ("recipe_id"),
	 CONSTRAINT "fk_meal_plan_user_recipe_user_meal_plan" FOREIGN KEY ("meal_plan_id") REFERENCES "user_meal_plan" ("meal_plan_id")
);
