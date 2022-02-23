DROP DATABASE IF EXISTS "schema803";
CREATE DATABASE "schema803";
USE "schema803";
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
