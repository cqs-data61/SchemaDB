DROP DATABASE IF EXISTS "schema1507";
CREATE DATABASE "schema1507";
USE "schema1507";
CREATE TABLE "answers_photos" (
	"id" SERIAL,
	"answer_id" INTEGER,
	"url" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "answers" (
	"id" SERIAL,
	"question_id" INTEGER,
	"body" TEXT,
	"date_written" TIMESTAMP,
	"answerer_name" VARCHAR,
	"answerer_email" VARCHAR,
	"reported" BOOLEAN,
	"helpful" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "questions" (
	"id" SERIAL,
	"product_id" INTEGER,
	"body" TEXT,
	"date_written" TIMESTAMP,
	"asker_name" VARCHAR,
	"asker_email" VARCHAR,
	"reported" BOOLEAN,
	"helpful" INTEGER,
	 PRIMARY KEY ("id")
);
