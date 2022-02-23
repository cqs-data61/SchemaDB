DROP DATABASE IF EXISTS "schema2247";
CREATE DATABASE "schema2247";
USE "schema2247";
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
