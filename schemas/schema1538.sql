DROP DATABASE IF EXISTS "schema1538";
CREATE DATABASE "schema1538";
USE "schema1538";
CREATE TABLE "photos" (
	"id" INT,
	"answer_id" INT,
	"url" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "results" (
	"question_id" INT,
	"product_id" INT,
	"question_body" VARCHAR,
	"question_date" VARCHAR,
	"asker_name" VARCHAR,
	"asker_email" VARCHAR,
	"reported" TINYINT,
	"question_helpfulness" INT,
	 PRIMARY KEY ("question_id")
);

CREATE TABLE "answers" (
	"ansid" INT,
	"question_id" INT,
	"body" VARCHAR,
	"date" VARCHAR,
	"answerer_name" VARCHAR,
	"answerer_email" VARCHAR,
	"report" TINYINT,
	"helpful" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_answers_to_results" FOREIGN KEY ("question_id") REFERENCES "results" ("question_id")
);
