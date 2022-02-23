DROP DATABASE IF EXISTS "schema2212";
CREATE DATABASE "schema2212";
USE "schema2212";
CREATE TABLE "contents" (
	"id" INT,
	"name" VARCHAR,
	"class" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "posts_hashtags" (
	"post_id" INT,
	"hashtag_id" INT
);

CREATE TABLE "hashtags" (
	"id" INT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "messages" (
	"id" INT,
	"user_id_sender" INT,
	"user_id_recipient" INT,
	"creation" TIMESTAMP,
	"content" TINYTEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "subscription" (
	"id" INT,
	"user_id" INT,
	"user_id_subscribed" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "likes" (
	"id" INT,
	"user_id" INT,
	"post_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "comments" (
	"id" INT,
	"user_id" INT,
	"post_id" INT,
	"creation" TIMESTAMP,
	"content" TINYTEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "post" (
	"id" INT,
	"user_id" INT,
	"content_id" INT,
	"creation" TIMESTAMP,
	"title" VARCHAR,
	"content" TINYTEXT,
	"author" VARCHAR,
	"picture" VARCHAR,
	"video" VARCHAR,
	"web" VARCHAR,
	"views" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"id" INT,
	"registration" TIMESTAMP,
	"email" VARCHAR,
	"login" VARCHAR,
	"password" CHAR,
	"avatar" VARCHAR,
	 PRIMARY KEY ("id")
);
