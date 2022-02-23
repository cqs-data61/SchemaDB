DROP DATABASE IF EXISTS "schema1936";
CREATE DATABASE "schema1936";
USE "schema1936";
CREATE TABLE "student_course" (
	"id" BIGINT,
	"student_id" BIGINT,
	"course_id" BIGINT,
	"create_time" DATETIME,
	"update_time" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "course" (
	"id" BIGINT,
	"name" VARCHAR,
	"teacher_id" BIGINT,
	"create_time" DATETIME,
	"update_time" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "student" (
	"id" BIGINT,
	"clazz" VARCHAR,
	"create_time" DATETIME,
	"update_time" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "teacher" (
	"id" BIGINT,
	"title" VARCHAR,
	"create_time" DATETIME,
	"update_time" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "user" (
	"id" BIGINT,
	"name" VARCHAR,
	"number" VARCHAR,
	"password" VARCHAR,
	"role" INT,
	"create_time" DATETIME,
	"update_time" DATETIME,
	 PRIMARY KEY ("id")
);
