DROP DATABASE IF EXISTS "schema1951";
CREATE DATABASE "schema1951";
USE "schema1951";
CREATE TABLE "owned_ingredients" (
	"id" INTEGER,
	"ingredient_id" INTEGER,
	"user_id" INTEGER,
	"quantity" INTEGER,
	"foreign" KEY,
	 PRIMARY KEY ("id")
);

CREATE TABLE "recipe_ingredients" (
	"id" INTEGER,
	"recipe_id" INTEGER,
	"ingredient_id" INTEGER,
	"foreign" KEY,
	 PRIMARY KEY ("id")
);

CREATE TABLE "ingredients" (
	"id" INTEGER,
	"name" TEXT,
	"measurement" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "user" (
	"id" INTEGER,
	"username" TEXT,
	"password" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "recipe" (
	"id" INTEGER,
	"author_id" INTEGER,
	"name" TEXT,
	"description" TEXT,
	"steps" TEXT,
	"created" TIMESTAMP,
	"lastedited" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_recipe_to_user" FOREIGN KEY ("author_id") REFERENCES "user" ("id")
);

CREATE TABLE "user_recipes" (
	"id" INTEGER,
	"recipe_id" INTEGER,
	"user_id" INTEGER,
	"starred" BOOLEAN,
	"recommended" BOOLEAN,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_user_recipes_to_recipe" FOREIGN KEY ("recipe_id") REFERENCES "recipe" ("id"),
	 CONSTRAINT "fkeycon_user_recipes_to_user" FOREIGN KEY ("user_id") REFERENCES "user" ("id")
);
