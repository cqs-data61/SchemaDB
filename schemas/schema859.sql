DROP DATABASE IF EXISTS "schema859";
CREATE DATABASE "schema859";
USE "schema859";
CREATE TABLE "trainer" (
	"name" VARCHAR,
	"level" INT,
	"pokemons_bag" VARCHAR,
	 PRIMARY KEY ("name")
);

CREATE TABLE "pokemon" (
	"id" INT,
	"name" VARCHAR,
	"type" VARCHAR,
	"trainer_name" VARCHAR,
	 PRIMARY KEY ("id")
);
