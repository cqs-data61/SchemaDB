DROP DATABASE IF EXISTS "schema49";
CREATE DATABASE "schema49";
USE "schema49";
CREATE TABLE "follows" (
	"id" SERIAL,
	"users_id" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "likes" (
	"id" SERIAL,
	"user_id" VARCHAR,
	"post_id" INTEGER,
	"likes" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "followers" (
	"id" SERIAL,
	"user_id" VARCHAR,
	"post_id" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "comments" (
	"id" SERIAL,
	"user_id" VARCHAR,
	"post_id" INT,
	"content" VARCHAR,
	"time_stamp" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "posts" (
	"id" SERIAL,
	"user_id" VARCHAR,
	"posts_images" VARCHAR,
	"content" VARCHAR,
	"post_time" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"id" VARCHAR,
	"email" VARCHAR,
	"name" TEXT,
	"user_pic" VARCHAR,
	"bio" VARCHAR,
	 PRIMARY KEY ("id")
);
