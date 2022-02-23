DROP DATABASE IF EXISTS "schema689";
CREATE DATABASE "schema689";
USE "schema689";
CREATE TABLE "photos" (
	"id" INTEGER,
	"answer_id" INTEGER,
	"photo" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "answers" (
	"id" INTEGER,
	"question_id" INTEGER,
	"body" VARCHAR,
	"date_written" DATE,
	"answerer_name" VARCHAR,
	"answerer_email" VARCHAR,
	"reported" BOOLEAN,
	"helpful" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "questions" (
	"id" INTEGER,
	"product_id" INTEGER,
	"body" VARCHAR,
	"date_written" DATE,
	"asker_name" VARCHAR,
	"asker_email" VARCHAR,
	"reported" BOOLEAN,
	"helpful" INTEGER,
	 PRIMARY KEY ("id")
);
