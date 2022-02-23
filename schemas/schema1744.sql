DROP DATABASE IF EXISTS "schema1744";
CREATE DATABASE "schema1744";
USE "schema1744";
CREATE TABLE "userseq" (
	"next_val" BIGINT
);

CREATE TABLE "tokenseq" (
	"next_val" BIGINT
);

CREATE TABLE "testseq" (
	"next_val" BIGINT
);

CREATE TABLE "test_access" (
	"test_id" INT,
	"user_id" INT,
	"access" TINYINT,
	 PRIMARY KEY ("test_id","user_id")
);

CREATE TABLE "resultseq" (
	"next_val" BIGINT
);

CREATE TABLE "result" (
	"id" BIGINT,
	"create_date" DATETIME,
	"examinee_id" BIGINT,
	"grade" DOUBLE,
	"passed" BIT,
	"test_id" BIGINT,
	"test_name" VARCHAR,
	"total_mark" DOUBLE,
	 PRIMARY KEY ("id")
);

CREATE TABLE "questionseq" (
	"next_val" BIGINT
);

CREATE TABLE "answerseq" (
	"next_val" BIGINT
);

CREATE TABLE "user" (
	"id" BIGINT,
	"create_date" DATETIME,
	"email" VARCHAR,
	"enabled" BIT,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"modify_date" DATETIME,
	"password" VARCHAR,
	"role" VARCHAR,
	"username" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "confirmation_token" (
	"token_id" BIGINT,
	"confirmation_token" VARCHAR,
	"created_date" DATETIME,
	"sent" BIT,
	"used" BIT,
	"user_id" BIGINT,
	 PRIMARY KEY ("token_id"),
	 CONSTRAINT "FKhjrtky9wbd6lbk7mu9tuddqgn" FOREIGN KEY ("user_id") REFERENCES "user" ("id")
);

CREATE TABLE "test" (
	"id" BIGINT,
	"create_date" DATETIME,
	"modify_date" DATETIME,
	"name" VARCHAR,
	"time" INT,
	"total_mark" DOUBLE,
	"creator_id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "FKt1bg0we878igqj4xocxbxmltx" FOREIGN KEY ("creator_id") REFERENCES "user" ("id")
);

CREATE TABLE "users_tests" (
	"user_tobe_tested_id" BIGINT,
	"test_id" BIGINT,
	 CONSTRAINT "FKlepen1u8de0ne6eoh1mwxeh1i" FOREIGN KEY ("test_id") REFERENCES "test" ("id"),
	 CONSTRAINT "FK4ecf0l9k4mro6xi8dbwku8m8x" FOREIGN KEY ("user_tobe_tested_id") REFERENCES "user" ("id")
);

CREATE TABLE "question" (
	"question_id" BIGINT,
	"create_date" DATETIME,
	"modify_date" DATETIME,
	"points" DOUBLE,
	"text" VARCHAR,
	"test_id" BIGINT,
	 PRIMARY KEY ("question_id"),
	 CONSTRAINT "FK8hejcpbbiq1qje11346akp3uj" FOREIGN KEY ("test_id") REFERENCES "test" ("id")
);

CREATE TABLE "answer" (
	"answer_id" BIGINT,
	"correct" BIT,
	"create_date" DATETIME,
	"modify_date" DATETIME,
	"selected" TINYINT,
	"text" VARCHAR,
	"question_id" BIGINT,
	 PRIMARY KEY ("answer_id"),
	 CONSTRAINT "FK8frr4bcabmmeyyu60qt7iiblo" FOREIGN KEY ("question_id") REFERENCES "question" ("question_id")
);

CREATE TABLE "admin_user" (
	"admin_id" BIGINT,
	"user_id" BIGINT,
	 PRIMARY KEY ("admin_id","user_id")
);
