DROP DATABASE IF EXISTS "schema358";
CREATE DATABASE "schema358";
USE "schema358";
CREATE TABLE "film_person" (
	"id" VARCHAR,
	"imdb_nconst" TEXT,
	"full_name" TEXT,
	"birth_date" DATE,
	"death_date" DATE,
	"migrated_from" TEXT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "film_type" (
	"id" VARCHAR,
	"name" TEXT,
	"description" TEXT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "film_genre" (
	"id" VARCHAR,
	"name" TEXT,
	"description" TEXT,
	"migrated_from" TEXT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "film_work" (
	"id" VARCHAR,
	"imdb_tconst" TEXT,
	"imdb_pconst" TEXT,
	"title" TEXT,
	"description" TEXT,
	"creation_date" DATE,
	"end_date" DATE,
	"certificate" TEXT,
	"file_path" TEXT,
	"rating" FLOAT,
	"season_number" INTEGER,
	"episode_number" INTEGER,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "film_work_person" (
	"id" VARCHAR,
	"film_work_id" VARCHAR,
	"person_id" VARCHAR,
	"role" TEXT,
	"migrated_from" TEXT,
	"created_at" DATETIME,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_film_work_person_to_film_person" FOREIGN KEY ("person_id") REFERENCES "film_person" ("id"),
	 CONSTRAINT "fkeycon_film_work_person_to_film_work" FOREIGN KEY ("film_work_id") REFERENCES "film_work" ("id")
);

CREATE TABLE "film_work_type" (
	"id" VARCHAR,
	"film_work_id" VARCHAR,
	"type_id" VARCHAR,
	"created_at" DATETIME,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_film_work_type_to_film_type" FOREIGN KEY ("type_id") REFERENCES "film_type" ("id"),
	 CONSTRAINT "fkeycon_film_work_type_to_film_work" FOREIGN KEY ("film_work_id") REFERENCES "film_work" ("id")
);

CREATE TABLE "film_work_genre" (
	"id" VARCHAR,
	"film_work_id" VARCHAR,
	"genre_id" VARCHAR,
	"migrated_from" TEXT,
	"created_at" DATETIME,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_film_work_genre_to_film_genre" FOREIGN KEY ("genre_id") REFERENCES "film_genre" ("id"),
	 CONSTRAINT "fkeycon_film_work_genre_to_film_work" FOREIGN KEY ("film_work_id") REFERENCES "film_work" ("id")
);
