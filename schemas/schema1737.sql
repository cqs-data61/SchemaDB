DROP DATABASE IF EXISTS "schema1737";
CREATE DATABASE "schema1737";
USE "schema1737";
CREATE TABLE "questions" (
	"id" INT,
	"title" VARCHAR,
	"a" VARCHAR,
	"b" VARCHAR,
	"c" VARCHAR,
	"d" VARCHAR,
	"correctquestion" CHAR,
	"quizzid" INT
);

CREATE TABLE "players" (
	"id" INT,
	"username" VARCHAR,
	"team" VARCHAR,
	"quizzid" INT,
	"score" INT
);

CREATE TABLE "quizz" (
	"id" INT,
	"theme" VARCHAR,
	"owner" VARCHAR,
	"questionnum" INT
);
