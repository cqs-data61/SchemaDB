DROP DATABASE IF EXISTS "schema778";
CREATE DATABASE "schema778";
USE "schema778";
CREATE TABLE "movies" (
	"id" INT,
	"movie_title" VARCHAR,
	"release_date" DATE,
	 PRIMARY KEY ("id")
);

CREATE TABLE "books" (
	"id" INT,
	"book_title" VARCHAR,
	"author_name" VARCHAR,
	"release_date" DATE,
	 PRIMARY KEY ("id")
);

CREATE TABLE "albums" (
	"id" INT,
	"artist_name" VARCHAR,
	"album_name" VARCHAR,
	"release_date" DATE,
	 PRIMARY KEY ("id")
);

CREATE TABLE "user" (
	"id" INT,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"album_id" INT,
	"movie_id" INT,
	"book_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_user_to_books" FOREIGN KEY ("book_id") REFERENCES "books" ("id"),
	 CONSTRAINT "fkeycon_user_to_movies" FOREIGN KEY ("movie_id") REFERENCES "movies" ("id"),
	 CONSTRAINT "fkeycon_user_to_albums" FOREIGN KEY ("album_id") REFERENCES "albums" ("id")
);
