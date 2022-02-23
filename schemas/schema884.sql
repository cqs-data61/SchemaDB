DROP DATABASE IF EXISTS "schema884";
CREATE DATABASE "schema884";
USE "schema884";
CREATE TABLE "inscription_session" (
	"inscription_id" INT,
	"session_id" INT
);

CREATE TABLE "session" (
	"id" INT,
	"course_id" INT,
	"teacher_id" INT,
	"assistant_id" INT,
	"academicyear" INT,
	"firstlesson" DATE,
	"lastlesson" DATE,
	"code" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "teacher" (
	"id" INT,
	"details_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "inscription" (
	"id" INT,
	"student_id" INT,
	"createdat" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "student" (
	"id" INT,
	"details_id" INT,
	"username" VARCHAR,
	"password" VARCHAR,
	"creditcard_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "assistant" (
	"id" INT,
	"details_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "person" (
	"id" INT,
	"firstname" VARCHAR,
	"lastname" VARCHAR,
	"birthdate" DATETIME,
	"email" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "course" (
	"id" INT,
	"faculty_id" INT,
	"required_id" INT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "faculty" (
	"id" INT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "creditcard" (
	"id" INT,
	"ownerfullname" VARCHAR,
	"number" VARCHAR,
	"pin" VARCHAR,
	"expirationdate" DATE,
	 PRIMARY KEY ("id")
);
