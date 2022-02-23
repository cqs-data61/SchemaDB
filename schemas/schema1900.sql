DROP DATABASE IF EXISTS "schema1900";
CREATE DATABASE "schema1900";
USE "schema1900";
CREATE TABLE "users" (
	"id" VARCHAR,
	"email" VARCHAR,
	"password" VARCHAR,
	"registration_date" DATE,
	 PRIMARY KEY ("id")
);

CREATE TABLE "favorites" (
	"user_id" VARCHAR,
	"image_id" INTEGER,
	"primary_image" VARCHAR,
	"image_title" VARCHAR,
	"artist_display_name" VARCHAR,
	"artist_nationality" VARCHAR,
	"artist_begin_date" VARCHAR,
	"artist_end_date" VARCHAR,
	"object_name" VARCHAR,
	"object_begin_date" INTEGER,
	"object_end_date" INTEGER,
	 PRIMARY KEY ("primary_image"),
	 CONSTRAINT "Favorites_fk0" FOREIGN KEY ("user_id") REFERENCES "users" ("id")
);
