DROP DATABASE IF EXISTS "schema1669";
CREATE DATABASE "schema1669";
USE "schema1669";
CREATE TABLE "semesters" (
	"id" INTEGER,
	"year" INTEGER,
	"term" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "role" (
	"name" TEXT,
	 PRIMARY KEY ("name")
);

CREATE TABLE "users" (
	"name" TEXT,
	"email" TEXT,
	"role" TEXT,
	"auth0_id" TEXT,
	"created_at" DATETIME,
	"last_seen" DATETIME,
	"picture" TEXT,
	 PRIMARY KEY ("auth0_id"),
	 CONSTRAINT "role_fkey" FOREIGN KEY ("role") REFERENCES "role" ("name")
);

CREATE TABLE "course" (
	"id" INTEGER,
	"code" TEXT,
	"detail" TEXT,
	"capacity" INTEGER,
	"enrolment_start" DATETIME,
	"enrolment_end" DATETIME,
	"semester_id" INTEGER,
	"name" TEXT,
	"teacher_id" TEXT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "course_teacher_id_fkey" FOREIGN KEY ("teacher_id") REFERENCES "users" ("auth0_id"),
	 CONSTRAINT "course_semester_id_fkey" FOREIGN KEY ("semester_id") REFERENCES "semesters" ("id")
);

CREATE TABLE "enrolment" (
	"user_id" TEXT,
	"course_id" INTEGER,
	"enroled_at" DATETIME,
	 PRIMARY KEY ("user_id","course_id"),
	 CONSTRAINT "enrolment_course_id_fkey" FOREIGN KEY ("course_id") REFERENCES "course" ("id"),
	 CONSTRAINT "enrolment_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "users" ("auth0_id")
);
