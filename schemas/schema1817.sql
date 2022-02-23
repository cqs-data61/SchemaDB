DROP DATABASE IF EXISTS "schema1817";
CREATE DATABASE "schema1817";
USE "schema1817";
CREATE TABLE "students" (
	"id" INT,
	"admin" BIT,
	"email" VARCHAR,
	"name" VARCHAR,
	"password" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "membership" (
	"group_id" INT,
	"member_id" INT
);

CREATE TABLE "study_groups" (
	"id" INT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "homework" (
	"id" INT,
	"name" VARCHAR,
	"problem_ids" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "best_records" (
	"exam_id" INT,
	"problem_id" INT,
	"student_id" INT,
	"maximum_memory_usage" BIGINT,
	"maximum_runtime" BIGINT,
	"score" INT,
	"status" ENUM,
	"submission_time" DATETIME
);

CREATE TABLE "answers" (
	"number" INT,
	"exam_id" INT,
	"problem_id" INT,
	"student_id" INT,
	"submission_id" VARCHAR,
	"answer_time" DATETIME
);

CREATE TABLE "examinees" (
	"exam_id" INT,
	"student_id" INT,
	"score" INT,
	"absent" BIT
);

CREATE TABLE "questions" (
	"exam_id" INT,
	"problem_id" INT,
	"question_order" INT,
	"quota" INT,
	"score" INT
);

CREATE TABLE "exams" (
	"id" INT,
	"description" VARCHAR,
	"name" VARCHAR,
	"start_time" DATETIME,
	"end_time" DATETIME,
	 PRIMARY KEY ("id")
);
