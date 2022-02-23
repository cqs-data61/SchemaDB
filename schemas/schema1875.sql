DROP DATABASE IF EXISTS "schema1875";
CREATE DATABASE "schema1875";
USE "schema1875";
CREATE TABLE "users" (
	"id" VARCHAR,
	"email" VARCHAR,
	"password" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "movies" (
	"id" VARCHAR,
	"domain_type" VARCHAR,
	"language" VARCHAR,
	"length" INT4,
	"name" VARCHAR,
	"release_date" DATE,
	"user_id" VARCHAR,
	"summary" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_user" FOREIGN KEY ("user_id") REFERENCES "users" ("id")
);

CREATE TABLE "liked_movies" (
	"id" VARCHAR,
	"movie_id" VARCHAR,
	"user_id" VARCHAR,
	 PRIMARY KEY ("id")
);
