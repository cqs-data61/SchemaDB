DROP DATABASE IF EXISTS "schema1313";
CREATE DATABASE "schema1313";
USE "schema1313";
CREATE TABLE "userrecipes" (
	"user_id" SERIAL,
	"recipe_id" SERIAL
);

CREATE TABLE "recipecontents" (
	"id" SERIAL,
	"content" TEXT,
	"recipe_id" SERIAL,
	 PRIMARY KEY ("id")
);

CREATE TABLE "ingredients" (
	"id" SERIAL,
	"ingredientname" TEXT,
	"ingredientamount" TEXT,
	"recipe_id" SERIAL,
	 PRIMARY KEY ("id")
);

CREATE TABLE "messages" (
	"id" SERIAL,
	"content" TEXT,
	"recipe_id" SERIAL,
	"user_id" SERIAL,
	"sent_at" TIMESTAMP,
	"edited_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "recipes" (
	"id" SERIAL,
	"recipename" TEXT,
	"visible" INTEGER,
	"popularity" INTEGER,
	"owner_id" SERIAL,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"id" SERIAL,
	"username" TEXT,
	"password" TEXT,
	"admin" BOOLEAN,
	 PRIMARY KEY ("id")
);
