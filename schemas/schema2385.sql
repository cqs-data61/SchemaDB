DROP DATABASE IF EXISTS "schema2385";
CREATE DATABASE "schema2385";
USE "schema2385";
CREATE TABLE "photos" (
	"photo_id" SERIAL,
	"answer_id" SERIAL,
	"photo_url" VARCHAR,
	 PRIMARY KEY ("photo_id")
);

CREATE TABLE "answers" (
	"answer_id" SERIAL,
	"question_id" SERIAL,
	"answer_body" VARCHAR,
	"answer_date" BIGINT,
	"answerer_name" VARCHAR,
	"answerer_email" VARCHAR,
	"reported" INT,
	"answer_helpfulness" INT,
	 PRIMARY KEY ("answer_id")
);

CREATE TABLE "questions" (
	"question_id" SERIAL,
	"product_id" INT,
	"question_body" VARCHAR,
	"question_date" BIGINT,
	"asker_name" VARCHAR,
	"asker_email" VARCHAR,
	"reported" INT,
	"question_helpfulness" INT,
	 PRIMARY KEY ("question_id")
);
