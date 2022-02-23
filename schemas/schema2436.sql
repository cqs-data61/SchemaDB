DROP DATABASE IF EXISTS "schema2436";
CREATE DATABASE "schema2436";
USE "schema2436";
CREATE TABLE "users" (
	"id" VARCHAR,
	"username" VARCHAR,
	"avatar_url" VARCHAR,
	"inserted_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "tweets" (
	"id" VARCHAR,
	"category" ENUM,
	"profanity_index" FLOAT,
	"text" VARCHAR,
	"author_id" VARCHAR,
	"inserted_at" TIMESTAMP,
	"processed_at" TIMESTAMP,
	"replying_to" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_author" FOREIGN KEY ("author_id") REFERENCES "users" ("id"),
	 CONSTRAINT "fk_tweet" FOREIGN KEY ("tweet_id") REFERENCES "tweets" ("id")
);

CREATE TABLE "likes" (
	"tweet_id" VARCHAR,
	"user_id" VARCHAR,
	 CONSTRAINT "fk_user" FOREIGN KEY ("user_id") REFERENCES "users" ("id"),
	 CONSTRAINT "fk_tweet" FOREIGN KEY ("tweet_id") REFERENCES "tweets" ("id")
);
