DROP DATABASE IF EXISTS "schema819";
CREATE DATABASE "schema819";
USE "schema819";
CREATE TABLE "enrollment" (
	"id" BIGINT,
	"user_id" BIGINT,
	"course_id" BIGINT,
	"enroll_date" DATE,
	 PRIMARY KEY ("id")
);

CREATE TABLE "course" (
	"id" BIGINT,
	"code" VARCHAR,
	"name" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "user" (
	"id" BIGINT,
	"username" VARCHAR,
	"email" VARCHAR,
	 PRIMARY KEY ("id")
);
