DROP DATABASE IF EXISTS "schema1064";
CREATE DATABASE "schema1064";
USE "schema1064";
CREATE TABLE "tomatoes_ratings" (
	"tomatoes_id" INT,
	"title" TEXT,
	"rt_rating" INT,
	"rt_audience_rating" INT,
	 PRIMARY KEY ("tomatoes_id")
);

CREATE TABLE "tomatoes_movies" (
	"tomatoes_id" INT,
	"title" TEXT,
	"release_year" INT,
	"genre" TEXT,
	"duration" INT,
	 PRIMARY KEY ("tomatoes_id")
);

CREATE TABLE "imdb_ratings" (
	"imdb_id" INT,
	"title" TEXT,
	"imdb_rating" INT,
	 PRIMARY KEY ("imdb_id")
);

CREATE TABLE "imdb_movies" (
	"imdb_id" INT,
	"title" TEXT,
	"release_year" INT,
	"genre" TEXT,
	"duration" INT,
	 PRIMARY KEY ("imdb_id")
);

CREATE TABLE "prime_video_ratings" (
	"prime_video_id" INT,
	"title" TEXT,
	"imdb_rating" TEXT,
	 PRIMARY KEY ("prime_video_id")
);

CREATE TABLE "prime_video_movies" (
	"prime_video_id" INT,
	"title" TEXT,
	"release_year" INT,
	"metacritic_rating" TEXT,
	"source" TEXT,
	 PRIMARY KEY ("prime_video_id")
);

CREATE TABLE "netflix_ratings" (
	"netflix_id" INT,
	"title" TEXT,
	"imdb_rating" TEXT,
	"rt_rating" INT,
	"metacritic_rating" TEXT,
	 PRIMARY KEY ("netflix_id")
);

CREATE TABLE "netflix_movies" (
	"netflix_id" INT,
	"title" TEXT,
	"release_year" INT,
	"genre" TEXT,
	"source" TEXT,
	 PRIMARY KEY ("netflix_id")
);
