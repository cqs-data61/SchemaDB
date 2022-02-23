DROP DATABASE IF EXISTS "schema2063";
CREATE DATABASE "schema2063";
USE "schema2063";
CREATE TABLE "users" (
	"id" INT,
	"name" VARCHAR,
	"email" VARCHAR,
	"password" VARCHAR,
	"remember_token" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "seasons" (
	"id" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"title" VARCHAR,
	"number" INT,
	"release_date" DATETIME,
	"end_date" DATETIME,
	"serie_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "password_resets" (
	"email" VARCHAR,
	"token" VARCHAR,
	"created_at" TIMESTAMP
);

CREATE TABLE "migrations" (
	"id" INT,
	"migration" VARCHAR,
	"batch" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "genres" (
	"id" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"name" VARCHAR,
	"ranking" INT,
	"active" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "series" (
	"id" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"title" VARCHAR,
	"release_date" DATETIME,
	"end_date" DATETIME,
	"genre_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "series_genre_id_foreign" FOREIGN KEY ("genre_id") REFERENCES "genres" ("id")
);

CREATE TABLE "movies" (
	"id" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"title" VARCHAR,
	"rating" DECIMAL,
	"awards" INT,
	"release_date" DATETIME,
	"length" INT,
	"genre_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "movies_genre_id_foreign" FOREIGN KEY ("genre_id") REFERENCES "genres" ("id")
);

CREATE TABLE "episodes" (
	"id" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"title" VARCHAR,
	"number" INT,
	"release_date" DATETIME,
	"rating" DECIMAL,
	"season_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "actors" (
	"id" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"rating" DECIMAL,
	"favorite_movie_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "actor_movie" (
	"id" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"actor_id" INT,
	"movie_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "actor_episode" (
	"id" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"actor_id" INT,
	"episode_id" INT,
	 PRIMARY KEY ("id")
);
