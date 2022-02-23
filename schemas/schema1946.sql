DROP DATABASE IF EXISTS "schema1946";
CREATE DATABASE "schema1946";
USE "schema1946";
CREATE TABLE "user" (
	"id" INTEGER,
	"username" TEXT,
	"password" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "post" (
	"id" INTEGER,
	"author_id" INTEGER,
	"created" TIMESTAMP,
	"muscle_group" TEXT,
	"exercise_name" TEXT,
	"set_count" INTEGER,
	"reps" INTEGER,
	"amt_weight" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_post_to_user" FOREIGN KEY ("author_id") REFERENCES "user" ("id")
);
