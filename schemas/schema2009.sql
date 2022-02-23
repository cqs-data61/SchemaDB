DROP DATABASE IF EXISTS "schema2009";
CREATE DATABASE "schema2009";
USE "schema2009";
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
