DROP DATABASE IF EXISTS "schema1878";
CREATE DATABASE "schema1878";
USE "schema1878";
CREATE TABLE "player" (
	"id" INT,
	"team_id" INT,
	"name" VARCHAR,
	"num" INT,
	"position" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "team" (
	"id" INT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "t_movies" (
	"id" INT,
	"name" VARCHAR,
	"genre" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "t_employees" (
	"id" INT,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"email" VARCHAR,
	 PRIMARY KEY ("id")
);
