DROP DATABASE IF EXISTS "schema1489";
CREATE DATABASE "schema1489";
USE "schema1489";
CREATE TABLE "spitter" (
	"id" IDENTITY,
	"username" VARCHAR,
	"password" VARCHAR,
	"fullname" VARCHAR,
	"email" VARCHAR,
	"updatebyemail" BOOLEAN
);

CREATE TABLE "spittle" (
	"id" INTEGER,
	"spitter" INTEGER,
	"message" VARCHAR,
	"postedtime" DATETIME,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_spittle_to_spitter" FOREIGN KEY ("spitter") REFERENCES "spitter" ("id")
);
