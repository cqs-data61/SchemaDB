DROP DATABASE IF EXISTS "schema1011";
CREATE DATABASE "schema1011";
USE "schema1011";
CREATE TABLE "users" (
	"userid" INT,
	"username" VARCHAR,
	"password" VARCHAR
);

CREATE TABLE "pokemons" (
	"pokemonid" INT,
	"pokemonname" VARCHAR,
	"pokemontype" VARCHAR
);
