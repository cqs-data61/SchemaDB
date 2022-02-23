DROP DATABASE IF EXISTS "schema1820";
CREATE DATABASE "schema1820";
USE "schema1820";
CREATE TABLE "results" (
	"id" SERIAL,
	"voter_id" INTEGER,
	"option_id" INTEGER,
	"point" INTEGER,
	"poll_id" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "options" (
	"id" SERIAL,
	"option" VARCHAR,
	"option_info" TEXT,
	"poll_id" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "polls" (
	"id" SERIAL,
	"title" VARCHAR,
	"description" TEXT,
	"creator_id" INTEGER,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"shared_link" VARCHAR,
	"results_link" VARCHAR,
	"is_active" BOOLEAN,
	"max_submission" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"id" SERIAL,
	"name" VARCHAR,
	"email" VARCHAR,
	 PRIMARY KEY ("id")
);
