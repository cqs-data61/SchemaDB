DROP DATABASE IF EXISTS "schema2017";
CREATE DATABASE "schema2017";
USE "schema2017";
CREATE TABLE "tweets" (
	"id" INT,
	"tweet_id" INT,
	"user_id" INT,
	"tweet_ts" DATETIME,
	"tweet_text" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "followers" (
	"id" INT,
	"user_id" INT,
	"follows_id" INT,
	 PRIMARY KEY ("id")
);
