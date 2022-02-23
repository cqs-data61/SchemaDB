DROP DATABASE IF EXISTS "schema1748";
CREATE DATABASE "schema1748";
USE "schema1748";
CREATE TABLE "category" (
	"name" TEXT,
	 PRIMARY KEY ("name")
);

CREATE TABLE "user" (
	"username" TEXT,
	"password" TEXT,
	"role" TEXT,
	"name" TEXT,
	"surname" TEXT,
	"profile_image" TEXT,
	 PRIMARY KEY ("username")
);

CREATE TABLE "student" (
	"username" TEXT,
	 PRIMARY KEY ("username"),
	 CONSTRAINT "fkeycon_student_to_user" FOREIGN KEY ("username") REFERENCES "user" ("username")
);

CREATE TABLE "teacher" (
	"username" TEXT,
	"bio" TEXT,
	 PRIMARY KEY ("username"),
	 CONSTRAINT "fkeycon_teacher_to_user" FOREIGN KEY ("username") REFERENCES "user" ("username")
);

CREATE TABLE "course" (
	"id" INTEGER,
	"title" TEXT,
	"description" TEXT,
	"guest" INTEGER,
	"category" TEXT,
	"creator" TEXT,
	 PRIMARY KEY ("title","creator"),
	 CONSTRAINT "fkeycon_course_to_category" FOREIGN KEY ("category") REFERENCES "category" ("name"),
	 CONSTRAINT "fkeycon_course_to_teacher" FOREIGN KEY ("creator") REFERENCES "teacher" ("username")
);

CREATE TABLE "question" (
	"id" INTEGER,
	"question" TEXT,
	"answer" TEXT,
	"student" TEXT,
	"course" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_question_to_course" FOREIGN KEY ("course") REFERENCES "course" ("id"),
	 CONSTRAINT "fkeycon_question_to_student" FOREIGN KEY ("student") REFERENCES "student" ("username")
);

CREATE TABLE "lesson" (
	"id" INTEGER,
	"title" TEXT,
	"course" INTEGER,
	 PRIMARY KEY ("title","course"),
	 CONSTRAINT "fkeycon_lesson_to_course" FOREIGN KEY ("course") REFERENCES "course" ("id")
);

CREATE TABLE "material" (
	"id" INTEGER,
	"name" TEXT,
	"lesson" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_material_to_lesson" FOREIGN KEY ("lesson") REFERENCES "lesson" ("id")
);

CREATE TABLE "user_course" (
	"username" TEXT,
	"course" TEXT,
	 PRIMARY KEY ("username","course"),
	 CONSTRAINT "fkeycon_user_course_to_user" FOREIGN KEY ("username") REFERENCES "user" ("username"),
	 CONSTRAINT "fkeycon_user_course_to_course" FOREIGN KEY ("course") REFERENCES "course" ("id")
);
