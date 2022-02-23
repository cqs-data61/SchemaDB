DROP DATABASE IF EXISTS "schema83";
CREATE DATABASE "schema83";
USE "schema83";
CREATE TABLE "users" (
	"id" INT,
	"first_name" VARCHAR,
	"surname" VARCHAR,
	"email" VARCHAR,
	"password" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "ratings" (
	"id" INT,
	"user_id" INT,
	"movie_id" INT,
	"rating" TINYINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_ratings_to_users" FOREIGN KEY ("user_id") REFERENCES "users" ("id")
);
