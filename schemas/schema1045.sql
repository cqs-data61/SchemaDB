DROP DATABASE IF EXISTS "schema1045";
CREATE DATABASE "schema1045";
USE "schema1045";
CREATE TABLE "exercises" (
	"id" SERIAL,
	"course_id" INTEGER,
	"question" TEXT,
	"answer" TEXT,
	"options" TEXT,
	"visible" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "participants" (
	"id" SERIAL,
	"course_id" INTEGER,
	"student_id" INTEGER,
	"visible" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "courses" (
	"id" SERIAL,
	"topic" TEXT,
	"content" TEXT,
	"owner_id" INTEGER,
	"modified" TIMESTAMP,
	"visible" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"id" SERIAL,
	"username" TEXT,
	"password" TEXT,
	"role" INTEGER,
	"visible" INTEGER,
	 PRIMARY KEY ("id")
);
