DROP DATABASE IF EXISTS "schema1218";
CREATE DATABASE "schema1218";
USE "schema1218";
CREATE TABLE "stocks" (
	"symbol" VARCHAR,
	"utc" DATETIME,
	"open_price" FLOAT,
	"close_price" FLOAT,
	"high" FLOAT,
	"low" FLOAT,
	"volume" INTEGER,
	 PRIMARY KEY ("utc","symbol")
);

CREATE TABLE "posts" (
	"postid" VARCHAR,
	"created_utc" DATETIME,
	"score" FLOAT,
	"upvote_ratio" FLOAT,
	"total_awards_received" FLOAT,
	"author" VARCHAR,
	"subreddit" INTEGER,
	"title" TEXT,
	"selftext" TEXT,
	 PRIMARY KEY ("postid","author","created_utc","subreddit")
);
