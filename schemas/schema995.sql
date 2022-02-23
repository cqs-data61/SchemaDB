DROP DATABASE IF EXISTS "schema995";
CREATE DATABASE "schema995";
USE "schema995";
CREATE TABLE "likes" (
	"id" SERIAL,
	"amount" INTEGER,
	"user_id" INTEGER,
	"comment_id" INTEGER,
	"arrayofuserid" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "comments" (
	"id" SERIAL,
	"comment" TEXT,
	"user_id" INTEGER,
	"recipe_id" INTEGER,
	"date" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "saved_meal_plans" (
	"id" SERIAL,
	"title" TEXT,
	"user_id" INTEGER,
	"recipe_id1" INTEGER,
	"recipe_id2" INTEGER,
	"recipe_id3" INTEGER,
	"recipe_id4" INTEGER,
	"meal_name1" TEXT,
	"meal_name2" TEXT,
	"meal_name3" TEXT,
	"meal_name4" TEXT,
	"time1" TEXT,
	"time2" TEXT,
	"time3" TEXT,
	"time4" TEXT,
	"date" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "saved_recipes" (
	"id" SERIAL,
	"user_id" INTEGER,
	"recipe_id" INTEGER,
	"date" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "community_ratings" (
	"rating" INTEGER,
	"post_id" INTEGER,
	"user_id" INTEGER,
	"created_at" TIMESTAMP,
	 PRIMARY KEY ("post_id","user_id")
);

CREATE TABLE "community_all_recipes" (
	"id" SERIAL,
	"user_id" INTEGER,
	"title" TEXT,
	"category" TEXT,
	"image_url" TEXT,
	"prep_time" INTEGER,
	"description" TEXT,
	"flavors" TEXT,
	"date" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "all_recipes" (
	"id" SERIAL,
	"api_id" INTEGER,
	"title" TEXT,
	"category" INTEGER,
	"servings" INTEGER,
	"image_url" TEXT,
	"prep_time" INTEGER,
	"description" TEXT,
	"rating" INTEGER,
	"expense" INTEGER,
	"ingredients" TEXT,
	"steps" TEXT,
	"vegan" BOOLEAN,
	"vegetarian" BOOLEAN,
	"glutenfree" BOOLEAN,
	"dairyfree" BOOLEAN,
	 PRIMARY KEY ("id")
);

CREATE TABLE "categories" (
	"recipe_id" INTEGER,
	"dish_type" TEXT,
	 CONSTRAINT "fkeycon_categories_to_all_recipes" FOREIGN KEY ("recipe_id") REFERENCES "all_recipes" ("id")
);

CREATE TABLE "users" (
	"id" SERIAL,
	"username" TEXT,
	"first_name" TEXT,
	"last_name" TEXT,
	"password" TEXT,
	"email" TEXT,
	"is_admin" BOOLEAN,
	"created_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "profile" (
	"id" SERIAL,
	"user_id" INTEGER,
	"image_url" TEXT,
	"region" TEXT,
	"short_bio" TEXT,
	"fav_flavors" TEXT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_profile_to_users" FOREIGN KEY ("user_id") REFERENCES "users" ("id")
);
