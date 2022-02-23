DROP DATABASE IF EXISTS "schema1586";
CREATE DATABASE "schema1586";
USE "schema1586";
CREATE TABLE "users" (
	"id" VARCHAR,
	"username" VARCHAR,
	"name" VARCHAR,
	"created_at" TIMESTAMP,
	"followers_count" INTEGER,
	"following_count" INTEGER,
	"tweet_count" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "tweets" (
	"id" VARCHAR,
	"text" VARCHAR,
	"author_id" VARCHAR,
	"conversation_id" VARCHAR,
	"created_at" TIMESTAMP,
	"query" VARCHAR,
	"likes" INT,
	"replies" INT,
	"retweets" INT,
	"quotes" INT,
	"ratio" REAL,
	 PRIMARY KEY ("id")
);
