DROP DATABASE IF EXISTS "schema770";
CREATE DATABASE "schema770";
USE "schema770";
CREATE TABLE "user" (
	"id" INT,
	"username" VARCHAR,
	"password" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "game" (
	"id" INT,
	"name" VARCHAR,
	"userid" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_game_to_user" FOREIGN KEY ("userid") REFERENCES "user" ("id")
);
