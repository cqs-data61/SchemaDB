DROP DATABASE IF EXISTS "schema1374";
CREATE DATABASE "schema1374";
USE "schema1374";
CREATE TABLE "movies_person" (
	"id" VARCHAR,
	"last_name" CHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "movies_movie" (
	"id" VARCHAR,
	"title" TEXT,
	"is_suspicious" BOOLEAN,
	"description" TEXT,
	"imdb_rating" FLOAT4,
	 PRIMARY KEY ("id")
);

CREATE TABLE "movies_movie_writers" (
	"id" INT4,
	"movie_id" VARCHAR,
	"person_id" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "movies_movie_writers_movie_id_fk_movies_movie_id" FOREIGN KEY ("movie_id") REFERENCES "movies_movie" ("id"),
	 CONSTRAINT "movies_movie_writers_person_id_fk_movies_person_id" FOREIGN KEY ("person_id") REFERENCES "movies_person" ("id")
);

CREATE TABLE "movies_movie_directors" (
	"id" INT4,
	"movie_id" VARCHAR,
	"person_id" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "movies_movie_directors_movie_id_fk_movies_movie_id" FOREIGN KEY ("movie_id") REFERENCES "movies_movie" ("id"),
	 CONSTRAINT "movies_movie_directors_person_id_fk_movies_person_id" FOREIGN KEY ("person_id") REFERENCES "movies_person" ("id")
);

CREATE TABLE "movies_movie_actors" (
	"id" VARCHAR,
	"movie_id" VARCHAR,
	"person_id" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "movies_movie_actors_movie_id_fk_movies_movie_id" FOREIGN KEY ("movie_id") REFERENCES "movies_movie" ("id"),
	 CONSTRAINT "movies_movie_actors_person_id_fk_movies_person_id" FOREIGN KEY ("person_id") REFERENCES "movies_person" ("id")
);

CREATE TABLE "movies_genre" (
	"id" VARCHAR,
	"title" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "movies_movie_genres" (
	"id" INT4,
	"movie_id" VARCHAR,
	"genre_id" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "movies_movie_genres_movie_id_fk_movies_movie_id" FOREIGN KEY ("movie_id") REFERENCES "movies_movie" ("id"),
	 CONSTRAINT "movies_movie_genres_genre_id_fk_movies_genre_id" FOREIGN KEY ("genre_id") REFERENCES "movies_genre" ("id")
);
