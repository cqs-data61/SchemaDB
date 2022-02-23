DROP DATABASE IF EXISTS "schema1322";
CREATE DATABASE "schema1322";
USE "schema1322";
CREATE TABLE "answer" (
	"id" VARCHAR,
	"answer" VARCHAR,
	"correct_answer" BOOLEAN,
	"question_id" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "question" (
	"id" VARCHAR,
	"question" VARCHAR,
	"category_id" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "category" (
	"id" VARCHAR,
	"created_at" TIMESTAMP,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);
