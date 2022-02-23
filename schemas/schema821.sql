DROP DATABASE IF EXISTS "schema821";
CREATE DATABASE "schema821";
USE "schema821";
CREATE TABLE "topics" (
	"id" SERIAL,
	"topic_name" TEXT,
	"topic_score" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "rankings" (
	"id" SERIAL,
	"ranking_title" TEXT,
	 PRIMARY KEY ("id")
);
