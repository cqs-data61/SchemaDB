DROP DATABASE IF EXISTS "schema861";
CREATE DATABASE "schema861";
USE "schema861";
CREATE TABLE "recipes" (
	"recipe_id" SERIAL,
	"recipe_name" VARCHAR,
	"recipe_instructions" VARCHAR,
	"recipe_description" VARCHAR,
	 PRIMARY KEY ("recipe_id")
);

CREATE TABLE "users" (
	"user_id" INT,
	"username" VARCHAR,
	"password_hash" VARCHAR,
	"role" VARCHAR,
	 PRIMARY KEY ("user_id")
);

CREATE TABLE "users_recipes" (
	"user_id" INT,
	"recipe_id" INT,
	 CONSTRAINT "fk_userf" FOREIGN KEY ("user_id") REFERENCES "users" ("user_id"),
	 CONSTRAINT "fk_recipef" FOREIGN KEY ("recipe_id") REFERENCES "recipes" ("recipe_id")
);

CREATE TABLE "mealplan" (
	"user_id" INT,
	"mealplan_id" SERIAL,
	"mealplan_name" VARCHAR,
	"mealplan_day" INT,
	 PRIMARY KEY ("mealplan_id"),
	 CONSTRAINT "fk_usermp" FOREIGN KEY ("user_id") REFERENCES "users" ("user_id")
);

CREATE TABLE "meals" (
	"user_id" INT,
	"meal_id" SERIAL,
	"meal_name" VARCHAR,
	"meal_type" INT,
	 PRIMARY KEY ("meal_id"),
	 CONSTRAINT "fk_usermeal" FOREIGN KEY ("user_id") REFERENCES "users" ("user_id")
);

CREATE TABLE "meals_recipes" (
	"meal_id" INT,
	"recipe_id" INT,
	 CONSTRAINT "fk_mealm" FOREIGN KEY ("meal_id") REFERENCES "meals" ("meal_id"),
	 CONSTRAINT "fk_recipemr" FOREIGN KEY ("recipe_id") REFERENCES "recipes" ("recipe_id")
);

CREATE TABLE "mealplan_meal" (
	"meal_id" INT,
	"mealplan_id" INT,
	 CONSTRAINT "fk_mealplanm" FOREIGN KEY ("mealplan_id") REFERENCES "mealplan" ("mealplan_id"),
	 CONSTRAINT "fk_meal" FOREIGN KEY ("meal_id") REFERENCES "meals" ("meal_id")
);

CREATE TABLE "ingredients" (
	"user_id" INT,
	"ingredient_id" SERIAL,
	"ingredient_name" VARCHAR,
	 PRIMARY KEY ("ingredient_id"),
	 CONSTRAINT "fk_user" FOREIGN KEY ("user_id") REFERENCES "users" ("user_id")
);

CREATE TABLE "recipes_ingredients" (
	"ingredient_id" INT,
	"recipe_id" INT,
	 CONSTRAINT "fk_ingredientf" FOREIGN KEY ("ingredient_id") REFERENCES "ingredients" ("ingredient_id"),
	 CONSTRAINT "fk_recipe" FOREIGN KEY ("recipe_id") REFERENCES "recipes" ("recipe_id")
);
