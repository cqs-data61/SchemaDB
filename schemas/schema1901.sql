DROP DATABASE IF EXISTS "schema1901";
CREATE DATABASE "schema1901";
USE "schema1901";
CREATE TABLE "user_badges" (
	"badge_id" VARCHAR,
	"username" VARCHAR,
	"purchased_at" DATE,
	"status" VARCHAR,
	 PRIMARY KEY ("username","badge_id")
);

CREATE TABLE "user" (
	"username" VARCHAR,
	"email" VARCHAR,
	"is_active" BIT,
	"kudos_point" INT,
	"name" VARCHAR,
	 PRIMARY KEY ("username")
);

CREATE TABLE "badge" (
	"id" VARCHAR,
	"name" VARCHAR,
	"description" VARCHAR,
	"cost" INT,
	"location" VARCHAR,
	"level" VARCHAR,
	"purchases" INT,
	 PRIMARY KEY ("id")
);
