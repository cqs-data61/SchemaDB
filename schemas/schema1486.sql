DROP DATABASE IF EXISTS "schema1486";
CREATE DATABASE "schema1486";
USE "schema1486";
CREATE TABLE "exam_roles" (
	"id" INT,
	"name" VARCHAR,
	"description" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "exam_users" (
	"id" INT,
	"login" VARCHAR,
	"last_name" VARCHAR,
	"first_name" VARCHAR,
	"middle_name" VARCHAR,
	"password_hash" VARCHAR,
	"created_at" TIMESTAMP,
	"role_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "exam_users_ibfk_1" FOREIGN KEY ("role_id") REFERENCES "exam_roles" ("id")
);

CREATE TABLE "exam_reviews_status" (
	"id" INT,
	"status" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "exam_genres" (
	"id" INT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "exam_films" (
	"id" INT,
	"name" VARCHAR,
	"description" TEXT,
	"production_year" YEAR,
	"country" VARCHAR,
	"director" VARCHAR,
	"screenwriter" VARCHAR,
	"actors" VARCHAR,
	"duration" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "exam_reviews" (
	"id" INT,
	"film_id" INT,
	"user_id" INT,
	"rating" INT,
	"review_text" TEXT,
	"date_added" TIMESTAMP,
	"status_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "exam_reviews_ibfk_1" FOREIGN KEY ("film_id") REFERENCES "exam_films" ("id")
);

CREATE TABLE "exam_posters" (
	"id" INT,
	"file_name" VARCHAR,
	"mime_type" VARCHAR,
	"md5_hash" VARCHAR,
	"film_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "exam_posters_ibfk_1" FOREIGN KEY ("film_id") REFERENCES "exam_films" ("id")
);

CREATE TABLE "exam_films_genres" (
	"id" INT,
	"film_id" INT,
	"genre_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "exam_films_genres_ibfk_1" FOREIGN KEY ("film_id") REFERENCES "exam_films" ("id")
);
