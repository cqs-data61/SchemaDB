DROP DATABASE IF EXISTS "schema899";
CREATE DATABASE "schema899";
USE "schema899";
CREATE TABLE "property_reviews" (
	"id" SERIAL,
	"guest_id" INTEGER,
	"property_id" INTEGER,
	"reservation_id" INTEGER,
	"message" TEXT,
	"rating" SMALLINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "reservations" (
	"id" SERIAL,
	"start_date" DATE,
	"end_date" DATE,
	"guest_id" INTEGER,
	"property_id" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "properties" (
	"id" SERIAL,
	"owner_id" INTEGER,
	"title" VARCHAR,
	"description" TEXT,
	"cost_per_night" INTEGER,
	"parking_spaces" INTEGER,
	"number_of_bathrooms" INTEGER,
	"number_of_bedrooms" INTEGER,
	"cover_photo_url" VARCHAR,
	"thumbnail_photo_url" VARCHAR,
	"country" VARCHAR,
	"street" VARCHAR,
	"city" VARCHAR,
	"province" VARCHAR,
	"post_code" VARCHAR,
	"active" BOOLEAN,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"id" SERIAL,
	"name" VARCHAR,
	"email" VARCHAR,
	"password" VARCHAR,
	 PRIMARY KEY ("id")
);
