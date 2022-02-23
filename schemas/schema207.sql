DROP DATABASE IF EXISTS "schema207";
CREATE DATABASE "schema207";
USE "schema207";
CREATE TABLE "users" (
	"id" SERIAL,
	"username" TEXT,
	"pasword" TEXT,
	"status" TEXT,
	"tries" INTEGER,
	"successes" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "options_villany" (
	"id" SERIAL,
	"option_villany" TEXT,
	"truth" INTEGER,
	"questo" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "questions_villany" (
	"id" SERIAL,
	"question_villany" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "options_war" (
	"id" SERIAL,
	"option_war" TEXT,
	"truth" INTEGER,
	"questi" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "questions_war" (
	"id" SERIAL,
	"question_war" TEXT,
	 PRIMARY KEY ("id")
);
