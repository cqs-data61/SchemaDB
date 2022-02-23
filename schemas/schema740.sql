DROP DATABASE IF EXISTS "schema740";
CREATE DATABASE "schema740";
USE "schema740";
CREATE TABLE "users" (
	"user_email" VARCHAR,
	"user_password" VARCHAR,
	"user_name" VARCHAR,
	"user_role" CHAR,
	"user_enabled" BOOLEAN,
	"created_at" TIMESTAMP,
	 PRIMARY KEY ("user_email")
);

CREATE TABLE "categories" (
	"category_id" BIGINT,
	"category_name" VARCHAR,
	 PRIMARY KEY ("category_id")
);

CREATE TABLE "quizzes" (
	"quiz_id" BIGINT,
	"quiz_name" VARCHAR,
	"quiz_category" BIGINT,
	"quiz_tester" VARCHAR,
	"quiz_image" BLOB,
	"created_at" TIMESTAMP,
	 PRIMARY KEY ("quiz_id"),
	 CONSTRAINT "fk_quiz_category" FOREIGN KEY ("quiz_category") REFERENCES "categories" ("category_id"),
	 CONSTRAINT "fk_quiz_tester" FOREIGN KEY ("quiz_tester") REFERENCES "users" ("user_email")
);

CREATE TABLE "questions" (
	"question_id" BIGINT,
	"question_quiz" BIGINT,
	"question_desc" VARCHAR,
	 PRIMARY KEY ("question_id"),
	 CONSTRAINT "fk_question_quiz" FOREIGN KEY ("question_quiz") REFERENCES "quizzes" ("quiz_id")
);

CREATE TABLE "choices" (
	"choice_id" BIGINT,
	"choice_question" BIGINT,
	"choice_desc" VARCHAR,
	 PRIMARY KEY ("choice_id"),
	 CONSTRAINT "fk_choice_question" FOREIGN KEY ("choice_question") REFERENCES "questions" ("question_id")
);

CREATE TABLE "answers" (
	"answer_id" BIGINT,
	"answer_question" BIGINT,
	"answer_choice" BIGINT,
	 PRIMARY KEY ("answer_id"),
	 CONSTRAINT "fk_answer_choice" FOREIGN KEY ("answer_choice") REFERENCES "choices" ("choice_id"),
	 CONSTRAINT "fk_answer_question" FOREIGN KEY ("answer_question") REFERENCES "questions" ("question_id")
);
