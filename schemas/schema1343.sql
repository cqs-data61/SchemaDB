DROP DATABASE IF EXISTS "schema1343";
CREATE DATABASE "schema1343";
USE "schema1343";
CREATE TABLE "t_member" (
	"id" VARCHAR,
	"pwd" VARCHAR,
	"name" VARCHAR,
	"email" VARCHAR,
	"joindate" DATE,
	 PRIMARY KEY ("id")
);

CREATE TABLE "t_board" (
	"articleno" NUMBER,
	"parentno" NUMBER,
	"title" VARCHAR,
	"content" VARCHAR,
	"imagefilename" VARCHAR,
	"writedate" DATE,
	"id" VARCHAR,
	 PRIMARY KEY ("articleno"),
	 CONSTRAINT "fk_id" FOREIGN KEY ("id") REFERENCES "t_member" ("id")
);
