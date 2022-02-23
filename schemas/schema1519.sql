DROP DATABASE IF EXISTS "schema1519";
CREATE DATABASE "schema1519";
USE "schema1519";
CREATE TABLE "answers_photos" (
	"id" SERIAL,
	"answer_id" INT,
	"url" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "answers" (
	"answer_id" SERIAL,
	"question_id" INT,
	"body" VARCHAR,
	"date" DATE,
	"answerer_name" VARCHAR,
	"answerer_email" VARCHAR,
	"reported" BOOLEAN,
	"helpfulness" INT,
	 PRIMARY KEY ("answer_id")
);

CREATE TABLE "questions" (
	"question_id" SERIAL,
	"product_id" INT,
	"question_body" VARCHAR,
	"question_date" DATE,
	"asker_name" VARCHAR,
	"asker_email" VARCHAR,
	"reported" BOOLEAN,
	"question_helpfulness" INT,
	 PRIMARY KEY ("question_id")
);
