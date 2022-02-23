DROP DATABASE IF EXISTS "schema539";
CREATE DATABASE "schema539";
USE "schema539";
CREATE TABLE "disney_plus" (
	"imdb_title_id" VARCHAR,
	"title" VARCHAR,
	"plot" VARCHAR,
	"type" VARCHAR,
	"mpaa_rating" VARCHAR,
	 PRIMARY KEY ("imdb_title_id")
);

CREATE TABLE "movies" (
	"imdb_title_id" VARCHAR,
	"title" VARCHAR,
	"year" INTEGER,
	"genre" VARCHAR,
	"description" VARCHAR,
	"reviews_from_users" FLOAT,
	"reviews_from_critics" FLOAT,
	 PRIMARY KEY ("imdb_title_id")
);

CREATE TABLE "ratings" (
	"imdb_title_id" VARCHAR,
	"us_voters_rating" FLOAT,
	"non_us_voters_rating" FLOAT,
	"us_voters_votes" FLOAT,
	"non_us_voters_votes" FLOAT,
	"average_total_ratings" FLOAT,
	 PRIMARY KEY ("imdb_title_id")
);
