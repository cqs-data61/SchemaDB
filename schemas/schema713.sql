DROP DATABASE IF EXISTS "schema713";
CREATE DATABASE "schema713";
USE "schema713";
CREATE TABLE "roles" (
	"id" SERIAL,
	"movie_id" INTEGER,
	"star_id" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "stars" (
	"id" SERIAL,
	"first_name" TEXT,
	"last_name" TEXT,
	"birth_date" DATE,
	 PRIMARY KEY ("id")
);

CREATE TABLE "studios" (
	"id" SERIAL,
	"name" TEXT,
	"start_date" DATE,
	 PRIMARY KEY ("id")
);

CREATE TABLE "movies" (
	"id" SERIAL,
	"title" TEXT,
	"release_year" INTEGER,
	"runtime" INTEGER,
	"rating" TEXT,
	"studio_id" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_studio" FOREIGN KEY ("studio_id") REFERENCES "studios" ("id")
);
