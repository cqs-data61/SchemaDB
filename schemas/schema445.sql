DROP DATABASE IF EXISTS "schema445";
CREATE DATABASE "schema445";
USE "schema445";
CREATE TABLE "property_reviews" (
	"id" SERIAL,
	"guest_id" INTEGER,
	"property_id" INTEGER,
	"reservation_id" INTEGER,
	"rating" SMALLINT,
	"message" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "reservations" (
	"id" SERIAL,
	"start_date" DATE,
	"end_date" DATE,
	"property_id" INTEGER,
	"guest_id" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "properties" (
	"id" SERIAL,
	"owner_id" INTEGER,
	"title" VARCHAR,
	"description" TEXT,
	"tumbnail_photo_url" VARCHAR,
	"cover_photo_url" VARCHAR,
	"cost_per_night" INTEGER,
	"parking_spaces" INTEGER,
	"number_of_bathrooms" INTEGER,
	"number_of_bedrooms" INTEGER,
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
