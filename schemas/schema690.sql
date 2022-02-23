DROP DATABASE IF EXISTS "schema690";
CREATE DATABASE "schema690";
USE "schema690";
CREATE TABLE "food_date" (
	"food_id" INTEGER,
	"log_date_id" INTEGER,
	 PRIMARY KEY ("food_id","log_date_id")
);

CREATE TABLE "food" (
	"id" INTEGER,
	"name" TEXT,
	"protein" INTEGER,
	"carbohydrates" INTEGER,
	"fat" INTEGER,
	"calories" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "log_date" (
	"id" INTEGER,
	"entry_date" DATE,
	 PRIMARY KEY ("id")
);
