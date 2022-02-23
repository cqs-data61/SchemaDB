DROP DATABASE IF EXISTS "schema1767";
CREATE DATABASE "schema1767";
USE "schema1767";
CREATE TABLE "survey" (
	"ta_cct_index" TEXT,
	"ta_cuid" TEXT,
	"cct" TEXT,
	"semester_index" INTEGER,
	"start_date" DATE,
	"end_date" DATE,
	"topic_1" TEXT,
	"response_1" INTEGER,
	"topic_2" TEXT,
	"response_2" INTEGER,
	"topic_3" TEXT,
	"response_3" INTEGER,
	"performance_rating" INTEGER,
	"comment" TEXT,
	 PRIMARY KEY ("ta_cct_index")
);

CREATE TABLE "course" (
	"cct" TEXT,
	"course_code" TEXT,
	"term" TEXT,
	"num_tas" INTEGER,
	"instructor1_id" TEXT,
	"instructor2_id" TEXT,
	"ta01_id" TEXT,
	"ta02_id" TEXT,
	"ta03_id" TEXT,
	"ta04_id" TEXT,
	"ta05_id" TEXT,
	 PRIMARY KEY ("cct")
);

CREATE TABLE "instructor" (
	"faculty_id" TEXT,
	"lastname" TEXT,
	"firstname" TEXT,
	"email" TEXT,
	 PRIMARY KEY ("faculty_id")
);

CREATE TABLE "ta" (
	"cuid" TEXT,
	"lastname" TEXT,
	"firstname" TEXT,
	"current_course" TEXT,
	"email" TEXT,
	 PRIMARY KEY ("cuid")
);
