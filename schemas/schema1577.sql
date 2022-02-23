DROP DATABASE IF EXISTS "schema1577";
CREATE DATABASE "schema1577";
USE "schema1577";
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
