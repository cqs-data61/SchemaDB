DROP DATABASE IF EXISTS "schema1383";
CREATE DATABASE "schema1383";
USE "schema1383";
CREATE TABLE "enroll" (
	"course_code" VARCHAR,
	"student_id" VARCHAR,
	 PRIMARY KEY ("course_code","student_id")
);

CREATE TABLE "coursematerial" (
	"material_id" VARCHAR,
	"course_code" VARCHAR,
	"material_name" VARCHAR,
	"material_link" VARCHAR,
	 PRIMARY KEY ("material_id","course_code")
);

CREATE TABLE "lesson" (
	"course_code" VARCHAR,
	"start_datetime" DATETIME,
	"end_datetime" DATETIME,
	"zoom_link" VARCHAR,
	"venue" VARCHAR,
	"type" VARCHAR,
	"teacher" VARCHAR,
	 PRIMARY KEY ("course_code")
);

CREATE TABLE "course" (
	"course_name" VARCHAR,
	"course_code" VARCHAR,
	 PRIMARY KEY ("course_code")
);

CREATE TABLE "student" (
	"student_id" VARCHAR,
	"name" VARCHAR,
	"login_datetime" DATETIME,
	"email_address" VARCHAR,
	 PRIMARY KEY ("student_id")
);
