DROP DATABASE IF EXISTS "schema449";
CREATE DATABASE "schema449";
USE "schema449";
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
