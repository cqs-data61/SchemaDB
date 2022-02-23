DROP DATABASE IF EXISTS "schema930";
CREATE DATABASE "schema930";
USE "schema930";
CREATE TABLE "comments_ratings" (
	"id" SERIAL,
	"rating" INT,
	"user_id" INT,
	"comment_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "posts_ratings" (
	"id" SERIAL,
	"rating" INT,
	"user_id" INT,
	"post_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "comments" (
	"id" SERIAL,
	"comment" TEXT,
	"rating" INT,
	"user_id" INT,
	"post_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "posts" (
	"id" SERIAL,
	"title" TEXT,
	"body" TEXT,
	"rating" INT,
	"latitude" FLOAT,
	"longitude" FLOAT,
	"user_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"id" SERIAL,
	"email" TEXT,
	"username" TEXT,
	"password" TEXT,
	"rating" INT,
	"confirmed" BOOLEAN,
	 PRIMARY KEY ("id")
);
