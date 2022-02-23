DROP DATABASE IF EXISTS "schema1220";
CREATE DATABASE "schema1220";
USE "schema1220";
CREATE TABLE "pet_user" (
	"id" INT,
	"user_name" VARCHAR,
	"user_passwd" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "pets" (
	"id" INT,
	"pet_name" VARCHAR,
	"pet_age" INT,
	"pet_place" VARCHAR,
	"pet_ownerid" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_pets_to_pet_user" FOREIGN KEY ("pet_ownerid") REFERENCES "pet_user" ("id")
);
