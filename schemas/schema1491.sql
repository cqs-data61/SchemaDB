DROP DATABASE IF EXISTS "schema1491";
CREATE DATABASE "schema1491";
USE "schema1491";
CREATE TABLE "lessons" (
	"id" INTEGER,
	"chapter" TEXT,
	"subchapter" TEXT,
	"points" INTEGER,
	"page" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "karnaughquestions" (
	"id" INTEGER,
	"subchapter" TEXT,
	"question" TEXT,
	"answer" TEXT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_lessons_karnaughQuestions" FOREIGN KEY ("subchapter") REFERENCES "lessons" ("subchapter")
);

CREATE TABLE "gatequestions" (
	"id" INTEGER,
	"subchapter" TEXT,
	"question" TEXT,
	"answer" TEXT,
	"circuits" TEXT,
	"truthtable" TEXT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_lessons_gateQuestions" FOREIGN KEY ("subchapter") REFERENCES "lessons" ("subchapter")
);

CREATE TABLE "questions" (
	"id" INTEGER,
	"subchapter" TEXT,
	"question" TEXT,
	"answer" TEXT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_lessons_questions" FOREIGN KEY ("subchapter") REFERENCES "lessons" ("subchapter")
);

CREATE TABLE "user" (
	"email" TEXT,
	"password" TEXT,
	"accounttype" TEXT,
	"loggedin" BOOLEAN,
	"token" TEXT,
	 PRIMARY KEY ("email","accounttype")
);

CREATE TABLE "tokens" (
	"id" INTEGER,
	"user" TEXT,
	"type" TEXT,
	"token" TEXT,
	"expires" TEXT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_token_user" FOREIGN KEY ("user") REFERENCES "user" ("email")
);

CREATE TABLE "class" (
	"id" INTEGER,
	"name" TEXT,
	"key" TEXT,
	"admin" TEXT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_class_lesson" FOREIGN KEY ("admin") REFERENCES "user" ("email")
);

CREATE TABLE "classroom" (
	"classid" INTEGER,
	"user" TEXT,
	"role" TEXT,
	 PRIMARY KEY ("classid","user"),
	 CONSTRAINT "fk_classID_class" FOREIGN KEY ("classid") REFERENCES "class" ("id"),
	 CONSTRAINT "fk_userclassroom_user" FOREIGN KEY ("user") REFERENCES "user" ("email")
);

CREATE TABLE "solved" (
	"odah" INTEGER,
	"lesson" TEXT,
	"user" TEXT,
	"points" INTEGER,
	"passed" INTEGER,
	 PRIMARY KEY ("odah"),
	 CONSTRAINT "fk_user_user" FOREIGN KEY ("user") REFERENCES "user" ("email"),
	 CONSTRAINT "fk_lessons_lesson" FOREIGN KEY ("lesson") REFERENCES "lessons" ("id")
);
