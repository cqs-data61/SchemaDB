DROP DATABASE IF EXISTS "schema1147";
CREATE DATABASE "schema1147";
USE "schema1147";
CREATE TABLE "student" (
	"id" INT,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"email" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "instructor_detail" (
	"id" INT,
	"youtube_channel" VARCHAR,
	"hobby" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "instructor" (
	"id" INT,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"email" VARCHAR,
	"instructor_detail_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "FK_DETAIL" FOREIGN KEY ("instructor_detail_id") REFERENCES "instructor_detail" ("id")
);

CREATE TABLE "course" (
	"id" INT,
	"title" VARCHAR,
	"instructor_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "FK_INSTRUCTOR" FOREIGN KEY ("instructor_id") REFERENCES "instructor" ("id")
);

CREATE TABLE "course_student" (
	"course_id" INT,
	"student_id" INT,
	 PRIMARY KEY ("course_id","student_id"),
	 CONSTRAINT "FK_STUDENT" FOREIGN KEY ("student_id") REFERENCES "student" ("id"),
	 CONSTRAINT "FK_COURSE_05" FOREIGN KEY ("course_id") REFERENCES "course" ("id")
);

CREATE TABLE "review" (
	"id" INT,
	"comment" VARCHAR,
	"course_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "FK_COURSE" FOREIGN KEY ("course_id") REFERENCES "course" ("id")
);
