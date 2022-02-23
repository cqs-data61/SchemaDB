DROP DATABASE IF EXISTS "schema1743";
CREATE DATABASE "schema1743";
USE "schema1743";
CREATE TABLE "meal_plans" (
	"meal_plan_id" SERIAL,
	"name" VARCHAR,
	"user_id" INT,
	 PRIMARY KEY ("meal_plan_id")
);

CREATE TABLE "meals" (
	"meal_id" SERIAL,
	"name" VARCHAR,
	"user_id" INT,
	 PRIMARY KEY ("meal_id")
);

CREATE TABLE "schedules" (
	"schedule_id" SERIAL,
	"meal_plan_id" INT,
	"meal_id" INT,
	"day_of_week" VARCHAR,
	"time_of_day" VARCHAR,
	 PRIMARY KEY ("schedule_id"),
	 CONSTRAINT "fk_meal_id" FOREIGN KEY ("meal_id") REFERENCES "meals" ("meal_id"),
	 CONSTRAINT "fk_meal_plan_id" FOREIGN KEY ("meal_plan_id") REFERENCES "meal_plans" ("meal_plan_id")
);

CREATE TABLE "recipes" (
	"recipe_id" SERIAL,
	"user_id" INT,
	"title" TEXT,
	"instructions" TEXT,
	 PRIMARY KEY ("recipe_id")
);

CREATE TABLE "meals_recipes" (
	"meal_recipe_id" SERIAL,
	"meal_id" INT,
	"recipe_id" INT,
	 PRIMARY KEY ("meal_recipe_id"),
	 CONSTRAINT "fk_recipe_id" FOREIGN KEY ("recipe_id") REFERENCES "recipes" ("recipe_id"),
	 CONSTRAINT "fk_meal_id" FOREIGN KEY ("meal_id") REFERENCES "meals" ("meal_id")
);

CREATE TABLE "ingredients" (
	"ingredient_id" SERIAL,
	"user_id" INT,
	"name" VARCHAR,
	"is_on_grocery_list" BOOLEAN,
	"recipe_id" INT,
	"quantity" DECIMAL,
	"measurement" VARCHAR,
	 PRIMARY KEY ("ingredient_id"),
	 CONSTRAINT "fk_recipe_id" FOREIGN KEY ("recipe_id") REFERENCES "recipes" ("recipe_id")
);
