DROP DATABASE IF EXISTS "schema41";
CREATE DATABASE "schema41";
USE "schema41";
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
