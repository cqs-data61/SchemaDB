DROP DATABASE IF EXISTS "schema932";
CREATE DATABASE "schema932";
USE "schema932";
CREATE TABLE "exercises" (
	"id" SERIAL,
	"name" TEXT,
	"description" TEXT,
	"muscle" TEXT,
	"general_location" TEXT,
	"specific_location" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"username" VARCHAR,
	"password" TEXT,
	"first_name" TEXT,
	"last_name" TEXT,
	"email" TEXT,
	"is_admin" BOOLEAN,
	"diet" TEXT,
	"has_answered_meal_questions" BOOLEAN,
	 PRIMARY KEY ("username")
);

CREATE TABLE "todo_items" (
	"id" SERIAL,
	"user_username" VARCHAR,
	"day_index" INT,
	"time_index" INT,
	"type" TEXT,
	"name" TEXT,
	"description" TEXT,
	"detail" TEXT,
	 PRIMARY KEY ("id")
);
