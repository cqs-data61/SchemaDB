DROP DATABASE IF EXISTS "schema927";
CREATE DATABASE "schema927";
USE "schema927";
CREATE TABLE "studentcoupons" (
	"scouponid" SERIAL,
	"studentid" INT,
	"couponid" INT,
	"owned" BOOLEAN,
	 PRIMARY KEY ("scouponid")
);

CREATE TABLE "coupons" (
	"couponid" SERIAL,
	"amount" INT,
	"points" INT,
	 PRIMARY KEY ("couponid")
);

CREATE TABLE "completestask" (
	"studentid" INT,
	"taskid" INT,
	"completed" BOOLEAN,
	 PRIMARY KEY ("studentid","taskid")
);

CREATE TABLE "completesassessment" (
	"studentid" INT,
	"assessmentid" INT,
	"completed" BOOLEAN,
	 PRIMARY KEY ("studentid","assessmentid")
);

CREATE TABLE "taughtby" (
	"lecturerid" INT,
	"courseid" INT,
	 PRIMARY KEY ("lecturerid","courseid")
);

CREATE TABLE "enrolledin" (
	"studentid" INT,
	"courseid" INT,
	 PRIMARY KEY ("studentid","courseid")
);

CREATE TABLE "tasks" (
	"taskid" SERIAL,
	"assessmentid" INT,
	"description" VARCHAR,
	"points" INT,
	 PRIMARY KEY ("taskid")
);

CREATE TABLE "assessments" (
	"assessmentid" SERIAL,
	"courseid" INT,
	"assessmenttype" VARCHAR,
	"startdate" DATE,
	"duedate" DATE,
	"title" VARCHAR,
	"details" TEXT,
	 PRIMARY KEY ("assessmentid")
);

CREATE TABLE "courses" (
	"courseid" SERIAL,
	"coursecode" CHAR,
	"ticked" BOOLEAN,
	 PRIMARY KEY ("courseid")
);

CREATE TABLE "students" (
	"studentid" INT,
	"userid" INT,
	"points" INT,
	"ticked" BOOLEAN,
	 PRIMARY KEY ("studentid")
);

CREATE TABLE "lecturers" (
	"lecturerid" SERIAL,
	"userid" INT,
	 PRIMARY KEY ("lecturerid")
);

CREATE TABLE "users" (
	"userid" SERIAL,
	"username" VARCHAR,
	"name" VARCHAR,
	"password" VARCHAR,
	 PRIMARY KEY ("userid")
);
