DROP DATABASE IF EXISTS "schema1818";
CREATE DATABASE "schema1818";
USE "schema1818";
CREATE TABLE "grades" (
	"id" SERIAL,
	"recipe_id" INTEGER,
	"grade" INTEGER,
	"visible" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "comments" (
	"id" SERIAL,
	"recipe_id" INTEGER,
	"sender_id" INTEGER,
	"comment" TEXT,
	"sent_at" TIMESTAMP,
	"visible" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "recipetags" (
	"recipe_id" INTEGER,
	"tag_id" INTEGER,
	"visible" INTEGER
);

CREATE TABLE "tags" (
	"id" SERIAL,
	"tag" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "ingredients" (
	"id" SERIAL,
	"recipe_id" INTEGER,
	"ingredient" TEXT,
	"visible" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "recipes" (
	"id" SERIAL,
	"creator_id" INTEGER,
	"created_at" TIMESTAMP,
	"title" TEXT,
	"description" TEXT,
	"instruction" TEXT,
	"visible" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"id" SERIAL,
	"username" TEXT,
	"password" TEXT,
	"role" INTEGER,
	"visible" INTEGER,
	 PRIMARY KEY ("id")
);
