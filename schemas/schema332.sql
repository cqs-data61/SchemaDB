DROP DATABASE IF EXISTS "schema332";
CREATE DATABASE "schema332";
USE "schema332";
CREATE TABLE "courses" (
	"id" SERIAL,
	"title" TEXT,
	"description" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "course_reviews" (
	"id" SERIAL,
	"date" DATETIME,
	"course_id" INTEGER,
	"review_text" TEXT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_course_reviews_to_courses" FOREIGN KEY ("course_id") REFERENCES "courses" ("id")
);

CREATE TABLE "students" (
	"id" SERIAL,
	"name" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "marks" (
	"id" SERIAL,
	"date" DATETIME,
	"student_id" INTEGER,
	"course_id" INTEGER,
	"points" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_marks_to_students" FOREIGN KEY ("student_id") REFERENCES "students" ("id"),
	 CONSTRAINT "fkeycon_marks_to_courses" FOREIGN KEY ("course_id") REFERENCES "courses" ("id")
);

CREATE TABLE "users" (
	"id" SERIAL,
	"first_name" TEXT,
	"middle_name" TEXT,
	"last_name" TEXT,
	"username" TEXT,
	"pwd_hash" TEXT,
	"is_admin" BOOLEAN,
	 PRIMARY KEY ("id")
);
