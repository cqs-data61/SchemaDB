DROP DATABASE IF EXISTS "schema965";
CREATE DATABASE "schema965";
USE "schema965";
CREATE TABLE "user" (
	"id" INTEGER,
	"username" TEXT,
	"password" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "workout" (
	"id" INTEGER,
	"author_id" INTEGER,
	"created" TIMESTAMP,
	"workout_time" INTEGER,
	"workout_distance" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_workout_to_user" FOREIGN KEY ("author_id") REFERENCES "user" ("id")
);
