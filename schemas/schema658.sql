DROP DATABASE IF EXISTS "schema658";
CREATE DATABASE "schema658";
USE "schema658";
CREATE TABLE "oracle" (
	"id" INTEGER,
	"img" TEXT,
	"name" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "question" (
	"id" INTEGER,
	"img" TEXT,
	"a" TEXT,
	"b" TEXT,
	"c" TEXT,
	"d" TEXT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_question_to_oracle" FOREIGN KEY ("img") REFERENCES "oracle" ("img")
);

CREATE TABLE "user" (
	"id" INTEGER,
	"username" TEXT,
	"password" TEXT,
	"num_questions_per_time" INTEGER,
	"next_question_id" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "wrong_question" (
	"id" INTEGER,
	"user_id" INTEGER,
	"question_id" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_wrong_question_to_question" FOREIGN KEY ("question_id") REFERENCES "question" ("id"),
	 CONSTRAINT "fkeycon_wrong_question_to_user" FOREIGN KEY ("user_id") REFERENCES "user" ("id")
);
