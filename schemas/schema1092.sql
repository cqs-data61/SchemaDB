DROP DATABASE IF EXISTS "schema1092";
CREATE DATABASE "schema1092";
USE "schema1092";
CREATE TABLE "property_reviews" (
	"id" SERIAL,
	"rating" SMALLINT,
	"message" TEXT,
	"guest_id" INTEGER,
	"property_id" INTEGER,
	"reservation_id" INTEGER,
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
	"title" VARCHAR,
	"description" TEXT,
	"thumbnail_photo_url" VARCHAR,
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
	"owner_id" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"id" SERIAL,
	"name" VARCHAR,
	"email" VARCHAR,
	"password" VARCHAR,
	 PRIMARY KEY ("id")
);
