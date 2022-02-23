DROP DATABASE IF EXISTS "schema200";
CREATE DATABASE "schema200";
USE "schema200";
CREATE TABLE "theatres" (
	"id" SERIAL,
	"uuid" VARCHAR,
	"version" SERIAL,
	"name" VARCHAR,
	"postal_address" VARCHAR,
	"city_code" VARCHAR,
	"active" BOOLEAN,
	"created_by" VARCHAR,
	"created_at" TIMESTAMP,
	"modified_by" VARCHAR,
	"modified_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "artists" (
	"id" SERIAL,
	"uuid" VARCHAR,
	"version" SERIAL,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"type" VARCHAR,
	"profile_description" VARCHAR,
	"profile_picture_url" VARCHAR,
	"wiki_url" VARCHAR,
	"active" BOOLEAN,
	"created_by" VARCHAR,
	"created_at" TIMESTAMP,
	"modified_by" VARCHAR,
	"modified_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "movies" (
	"id" SERIAL,
	"uuid" VARCHAR,
	"version" SERIAL,
	"title" VARCHAR,
	"duration" SMALLINT,
	"storyline" VARCHAR,
	"poster_url" VARCHAR,
	"trailer_url" VARCHAR,
	"wiki_url" VARCHAR,
	"release_at" TIMESTAMP,
	"censor_board_rating" VARCHAR,
	"rating" NUMERIC,
	"status" VARCHAR,
	"created_by" VARCHAR,
	"created_at" TIMESTAMP,
	"modified_by" VARCHAR,
	"modified_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "shows" (
	"id" SERIAL,
	"uuid" VARCHAR,
	"version" SERIAL,
	"movie_id" INTEGER,
	"theatre_id" INTEGER,
	"start_time" TIMESTAMP,
	"end_time" TIMESTAMP,
	"lang" VARCHAR,
	"unit_price" NUMERIC,
	"total_seats" SMALLINT,
	"available_seats" SMALLINT,
	"active" BOOLEAN,
	"created_by" VARCHAR,
	"created_at" TIMESTAMP,
	"modified_by" VARCHAR,
	"modified_at" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_movie_shows_theatre_id" FOREIGN KEY ("theatre_id") REFERENCES "theatres" ("id"),
	 CONSTRAINT "fk_movie_shows_movie_id" FOREIGN KEY ("movie_id") REFERENCES "movies" ("id")
);

CREATE TABLE "show_bookings" (
	"id" SERIAL,
	"uuid" VARCHAR,
	"version" SERIAL,
	"customer_id" INTEGER,
	"show_id" INTEGER,
	"booking_ref" VARCHAR,
	"coupon_code" VARCHAR,
	"total_seats" SMALLINT,
	"total_price" NUMERIC,
	"status" VARCHAR,
	"booking_at" TIMESTAMP,
	"cancelled_at" TIMESTAMP,
	"created_by" VARCHAR,
	"created_at" TIMESTAMP,
	"modified_by" VARCHAR,
	"modified_at" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_show_bookings_movie_show_id" FOREIGN KEY ("show_id") REFERENCES "shows" ("id")
);

CREATE TABLE "booking_tickets" (
	"id" SERIAL,
	"booking_id" INTEGER,
	"ticket_number" VARCHAR,
	"created_by" VARCHAR,
	"created_at" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_booking_tickets_show_booking_id" FOREIGN KEY ("booking_id") REFERENCES "show_bookings" ("id")
);

CREATE TABLE "movie_artists" (
	"id" SERIAL,
	"movie_id" INTEGER,
	"artist_id" INTEGER,
	"created_by" VARCHAR,
	"created_at" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_movie_artists_movie_id" FOREIGN KEY ("movie_id") REFERENCES "movies" ("id"),
	 CONSTRAINT "fk_movie_artists_artist_id" FOREIGN KEY ("artist_id") REFERENCES "artists" ("id")
);

CREATE TABLE "coupons" (
	"id" SERIAL,
	"code" VARCHAR,
	"discount_percentage" NUMERIC,
	"description" VARCHAR,
	"created_by" VARCHAR,
	"created_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "genres" (
	"id" SERIAL,
	"uuid" VARCHAR,
	"genre" VARCHAR,
	"description" VARCHAR,
	"created_by" VARCHAR,
	"created_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "movie_genres" (
	"id" SERIAL,
	"movie_id" INTEGER,
	"genre_id" INTEGER,
	"created_by" VARCHAR,
	"created_at" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_movie_genres_movie_id" FOREIGN KEY ("movie_id") REFERENCES "movies" ("id"),
	 CONSTRAINT "fk_movie_genres_genre_id" FOREIGN KEY ("genre_id") REFERENCES "genres" ("id")
);

CREATE TABLE "cities" (
	"id" SERIAL,
	"code" VARCHAR,
	"name" VARCHAR,
	"created_by" VARCHAR,
	"created_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);
