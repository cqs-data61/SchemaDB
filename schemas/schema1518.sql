DROP DATABASE IF EXISTS "schema1518";
CREATE DATABASE "schema1518";
USE "schema1518";
CREATE TABLE "users" (
	"id" INT,
	"name" VARCHAR,
	"created" DATETIME,
	"password" VARCHAR
);

CREATE TABLE "scores" (
	"id" INT,
	"user_id" INT,
	"score" INT
);

CREATE TABLE "results" (
	"id" INT,
	"user_id" INT,
	"question_id" INT,
	"answer_id" INT
);

CREATE TABLE "questions" (
	"id" INT,
	"value" MEDIUMTEXT,
	"created" DATETIME
);

CREATE TABLE "answers" (
	"id" INT,
	"question_id" INT,
	"value" VARCHAR,
	"correct" TINYINT,
	"points" INT
);
