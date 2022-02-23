DROP DATABASE IF EXISTS "schema418";
CREATE DATABASE "schema418";
USE "schema418";
CREATE TABLE "users" (
	"id" INTEGER,
	"username" STRING,
	"email" STRING,
	"password" STRING,
	"role" STRING,
	 PRIMARY KEY ("id")
);

CREATE TABLE "topics" (
	"id" INTEGER,
	"date" DATE,
	"title" STRING,
	"content" STRING,
	 PRIMARY KEY ("id")
);

CREATE TABLE "comments" (
	"id" INTEGER,
	"commentdate" DATE,
	"comment" STRING,
	"topicid" INTEGER,
	"userid" STRING,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_comments_to_topics" FOREIGN KEY ("topicid") REFERENCES "topics" ("id")
);

CREATE TABLE "faqs" (
	"id" INTEGER,
	"question" STRING,
	"answer" STRING,
	 PRIMARY KEY ("id")
);
