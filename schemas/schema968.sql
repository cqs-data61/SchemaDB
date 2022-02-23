DROP DATABASE IF EXISTS "schema968";
CREATE DATABASE "schema968";
USE "schema968";
CREATE TABLE "shopping" (
	"id" SERIAL,
	"title" TEXT,
	"quantity" INTEGER,
	"is_selected" BOOLEAN,
	"user_id" INTEGER,
	"unique_id" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "favorites" (
	"id" SERIAL,
	"food_id" INTEGER,
	"title" TEXT,
	"picture" TEXT,
	"user_id" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "profile" (
	"id" SERIAL,
	"diet" TEXT,
	"intolerances" TEXT,
	"cuisines" TEXT,
	"description" TEXT,
	"location" TEXT,
	"schoolname" TEXT,
	"image" TEXT,
	"user_id" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"id" SERIAL,
	"password" TEXT,
	"first_name" TEXT,
	"last_name" TEXT,
	"email" TEXT,
	"username" TEXT,
	"is_admin" BOOLEAN,
	"created_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);
