DROP DATABASE IF EXISTS "schema2082";
CREATE DATABASE "schema2082";
USE "schema2082";
CREATE TABLE "questions" (
	"question_id" SERIAL,
	"product_id" INTEGER,
	"body" VARCHAR,
	"date_written" DATE,
	"asker_name" VARCHAR,
	"asker_email" VARCHAR,
	"reported" BOOLEAN,
	"helpful" INTEGER,
	 PRIMARY KEY ("question_id")
);

CREATE TABLE "answers" (
	"answer_id" SERIAL,
	"question_id" INTEGER,
	"body" VARCHAR,
	"date_written" DATE,
	"answerer_name" VARCHAR,
	"answerer_email" VARCHAR,
	"reported" BOOLEAN,
	"helpful" INTEGER,
	 PRIMARY KEY ("answer_id"),
	 CONSTRAINT "fkeycon_answers_to_questions" FOREIGN KEY ("question_id") REFERENCES "questions" ("question_id")
);

CREATE TABLE "photos" (
	"photo_id" SERIAL,
	"answer_id" INTEGER,
	"url" VARCHAR,
	 PRIMARY KEY ("photo_id"),
	 CONSTRAINT "fkeycon_photos_to_answers" FOREIGN KEY ("answer_id") REFERENCES "answers" ("answer_id")
);
