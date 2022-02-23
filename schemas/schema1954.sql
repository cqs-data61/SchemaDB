DROP DATABASE IF EXISTS "schema1954";
CREATE DATABASE "schema1954";
USE "schema1954";
CREATE TABLE "users_exercises" (
	"users_id" INT,
	"courses_id" INT,
	"exercises_id" INT,
	"finished" BOOLEAN
);

CREATE TABLE "users_courses" (
	"users_id" INT,
	"courses_id" INT
);

CREATE TABLE "answers" (
	"id" SERIAL,
	"answer" TEXT,
	"choices_id" INT,
	"exercises_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "choices" (
	"id" SERIAL,
	"exercises_id" INT,
	"choice" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "exercises" (
	"id" SERIAL,
	"assignment" TEXT,
	"courses_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "courses" (
	"id" SERIAL,
	"coursename" TEXT,
	"theory" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"id" SERIAL,
	"username" TEXT,
	"password" TEXT,
	"user_type" TEXT,
	 PRIMARY KEY ("id")
);
