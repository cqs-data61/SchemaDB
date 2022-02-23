DROP DATABASE IF EXISTS "schema1110";
CREATE DATABASE "schema1110";
USE "schema1110";
CREATE TABLE "studentcourses" (
	"id" SERIAL,
	"student_id" INTEGER,
	"course_id" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "courses" (
	"id" SERIAL,
	"course" TEXT,
	"teacher" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "goals" (
	"id" SERIAL,
	"student_id" INTEGER,
	"course_id" INTEGER,
	"goal" INTEGER,
	"studied" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "students" (
	"id" SERIAL,
	"username" TEXT,
	"pw" TEXT,
	 PRIMARY KEY ("id")
);
