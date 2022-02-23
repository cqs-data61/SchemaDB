DROP DATABASE IF EXISTS "schema2520";
CREATE DATABASE "schema2520";
USE "schema2520";
CREATE TABLE "questions" (
	"id" INTEGER,
	"product_id" INTEGER,
	"question" VARCHAR,
	"dateposted" TIMESTAMP,
	"asker" VARCHAR,
	"email" VARCHAR,
	"reported" BOOLEAN,
	"question_helpfulness" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "answers" (
	"answer_id" INTEGER,
	"question_id" INTEGER,
	"answer" VARCHAR,
	"dateposted" TIMESTAMP,
	"answerer" VARCHAR,
	"email" VARCHAR,
	"reported" BOOLEAN,
	"answer_helpfulness" INTEGER,
	 PRIMARY KEY ("answer_id"),
	 CONSTRAINT "fkeycon_answers_to_questions" FOREIGN KEY ("question_id") REFERENCES "questions" ("id")
);

CREATE TABLE "answerphotos" (
	"id" INTEGER,
	"answer_id" INTEGER,
	"link" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_answerphotos_to_answers" FOREIGN KEY ("answer_id") REFERENCES "answers" ("answer_id")
);
