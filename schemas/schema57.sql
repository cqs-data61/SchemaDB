DROP DATABASE IF EXISTS "schema57";
CREATE DATABASE "schema57";
USE "schema57";
CREATE TABLE "questions" (
	"id" INTEGER,
	"question_text" TEXT,
	"answer_text" TEXT,
	"asked_by_id" INTEGER,
	"expert_id" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"id" INTEGER,
	"name" TEXT,
	"password" TEXT,
	"expert" BOOLEAN,
	"admin" BOOLEAN,
	 PRIMARY KEY ("id")
);
