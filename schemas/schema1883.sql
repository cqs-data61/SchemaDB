DROP DATABASE IF EXISTS "schema1883";
CREATE DATABASE "schema1883";
USE "schema1883";
CREATE TABLE "films_actors" (
	"id" BIGSERIAL,
	"film_id" BIGINT,
	"actor_id" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "films_directors" (
	"id" BIGSERIAL,
	"film_id" BIGINT,
	"director_id" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "actors" (
	"id" SERIAL,
	"first_name" TEXT,
	"last_name" TEXT,
	"year_of_birth" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "directors" (
	"id" SERIAL,
	"first_name" TEXT,
	"last_name" TEXT,
	"year_of_birth" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "films" (
	"id" BIGSERIAL,
	"title" TEXT,
	"year" INTEGER,
	"fees" INTEGER,
	"studio_id" INTEGER,
	"rating_id" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "ratings" (
	"id" SERIAL,
	"name" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "studios" (
	"id" SERIAL,
	"name" TEXT,
	 PRIMARY KEY ("id")
);
