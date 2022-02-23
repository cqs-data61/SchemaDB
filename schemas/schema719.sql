DROP DATABASE IF EXISTS "schema719";
CREATE DATABASE "schema719";
USE "schema719";
CREATE TABLE "reviews" (
	"id" SERIAL,
	"text" TEXT,
	"user_username" TEXT,
	"location_name" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "viewings" (
	"id" SERIAL,
	"location_name" TEXT,
	"user_username" TEXT,
	"date" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "favorites" (
	"user_username" TEXT,
	"location_name" TEXT,
	 PRIMARY KEY ("user_username","location_name")
);

CREATE TABLE "location_images" (
	"name" TEXT,
	"location_name" TEXT,
	 PRIMARY KEY ("name")
);

CREATE TABLE "locations" (
	"name" TEXT,
	"type" TEXT,
	"dimension" TEXT,
	"description" TEXT,
	"cost" INTEGER,
	"alt_cost_curr" TEXT,
	"alt_cost_amt" INTEGER,
	"neighborhood" TEXT,
	"agent_name" TEXT,
	 PRIMARY KEY ("name")
);

CREATE TABLE "agents" (
	"name" TEXT,
	"image" TEXT,
	 PRIMARY KEY ("name")
);

CREATE TABLE "users" (
	"username" TEXT,
	 PRIMARY KEY ("username")
);
