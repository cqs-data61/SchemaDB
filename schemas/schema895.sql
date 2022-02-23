DROP DATABASE IF EXISTS "schema895";
CREATE DATABASE "schema895";
USE "schema895";
CREATE TABLE "student" (
	"id" SERIAL,
	"dateofbirth" DATE,
	"firstname" VARCHAR,
	"lastname" VARCHAR,
	"group_id" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "course" (
	"id" SERIAL,
	"hours" INTEGER,
	"name" VARCHAR,
	"group_id" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "_group" (
	"id" SERIAL,
	"year" INTEGER,
	 PRIMARY KEY ("id")
);
