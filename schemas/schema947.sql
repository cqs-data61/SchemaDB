DROP DATABASE IF EXISTS "schema947";
CREATE DATABASE "schema947";
USE "schema947";
CREATE TABLE "users" (
	"user_id" BIGINT,
	"code" CHARACTER VARYING,
	 PRIMARY KEY ("user_id")
);

CREATE TABLE "languages" (
	"language_id" INTEGER,
	"name" CHARACTER VARYING,
	 PRIMARY KEY ("language_id")
);

CREATE TABLE "films" (
	"film_id" BIGINT,
	"name" CHARACTER VARYING,
	"age_limit" CHARACTER VARYING,
	"short_description" TEXT,
	"timing" CHARACTER VARYING,
	"image" TEXT,
	"release_date" CHARACTER VARYING,
	"awards" TEXT,
	"language_id" INTEGER,
	 PRIMARY KEY ("film_id"),
	 CONSTRAINT "fk2_languageId" FOREIGN KEY ("language_id") REFERENCES "languages" ("language_id")
);

CREATE TABLE "genres" (
	"genre_id" INTEGER,
	"name" CHARACTER VARYING,
	 PRIMARY KEY ("genre_id")
);

CREATE TABLE "genres_films" (
	"genre_film_id" BIGINT,
	"genre_id" INTEGER,
	"film_id" BIGINT,
	 PRIMARY KEY ("genre_film_id"),
	 CONSTRAINT "fk_film_id" FOREIGN KEY ("film_id") REFERENCES "films" ("film_id"),
	 CONSTRAINT "fk_genre_id" FOREIGN KEY ("genre_id") REFERENCES "genres" ("genre_id")
);

CREATE TABLE "directors" (
	"director_id" INTEGER,
	"name" CHARACTER VARYING,
	 PRIMARY KEY ("director_id")
);

CREATE TABLE "directors_films" (
	"director_film_id" BIGINT,
	"director_id" INTEGER,
	"film_id" BIGINT,
	 PRIMARY KEY ("film_id"),
	 CONSTRAINT "fk_director_id" FOREIGN KEY ("director_id") REFERENCES "directors" ("director_id"),
	 CONSTRAINT "fk_film_id" FOREIGN KEY ("film_id") REFERENCES "films" ("film_id")
);

CREATE TABLE "countries" (
	"country_id" INTEGER,
	"name" CHARACTER VARYING,
	 PRIMARY KEY ("country_id")
);

CREATE TABLE "countries_films" (
	"country_film_id" BIGINT,
	"country_id" INTEGER,
	"film_id" BIGINT,
	 PRIMARY KEY ("country_film_id"),
	 CONSTRAINT "country_id" FOREIGN KEY ("country_id") REFERENCES "countries" ("country_id"),
	 CONSTRAINT "film_id" FOREIGN KEY ("film_id") REFERENCES "films" ("film_id")
);

CREATE TABLE "admins" (
	"admin_id" INTEGER,
	"code" CHARACTER VARYING,
	 PRIMARY KEY ("admin_id")
);

CREATE TABLE "actors" (
	"actor_id" INTEGER,
	"name" CHARACTER VARYING,
	 PRIMARY KEY ("actor_id")
);

CREATE TABLE "actors_films" (
	"actor_film_id" BIGINT,
	"actor_id" INTEGER,
	"film_id" BIGINT,
	 PRIMARY KEY ("actor_film_id"),
	 CONSTRAINT "fk_film_id" FOREIGN KEY ("film_id") REFERENCES "films" ("film_id"),
	 CONSTRAINT "fk_actor_id" FOREIGN KEY ("actor_id") REFERENCES "actors" ("actor_id")
);
