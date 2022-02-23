DROP DATABASE IF EXISTS "schema1256";
CREATE DATABASE "schema1256";
USE "schema1256";
CREATE TABLE "users" (
	"id" INT,
	"registration_date" DATETIME,
	"email" CHAR,
	"user_name" CHAR,
	"password" CHAR,
	"avatar" CHAR,
	"contacts" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "bets" (
	"id" INT,
	"bet_date" DATETIME,
	"amount" INT,
	"users_id" INT,
	"lots_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "lots" (
	"id" INT,
	"creation_date" DATETIME,
	"lot_name" CHAR,
	"description" TEXT,
	"image" CHAR,
	"start_price" INT,
	"end_date" DATETIME,
	"lot_step" CHAR,
	"users_id" INT,
	"winners_id" INT,
	"categories_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "categories" (
	"id" INT,
	"category_name" CHAR,
	"class_name" CHAR,
	 PRIMARY KEY ("id")
);
