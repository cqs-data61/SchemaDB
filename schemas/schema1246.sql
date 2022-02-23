DROP DATABASE IF EXISTS "schema1246";
CREATE DATABASE "schema1246";
USE "schema1246";
CREATE TABLE "views" (
	"id" SERIAL,
	"created_at" TIMESTAMP,
	"username" VARCHAR,
	"video_id" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "videolikes" (
	"id" SERIAL,
	"created_at" TIMESTAMP,
	"username" VARCHAR,
	"video_id" INTEGER,
	 PRIMARY KEY ("username","video_id")
);

CREATE TABLE "subscriptions" (
	"id" SERIAL,
	"created_at" TIMESTAMP,
	"subscriber_username" VARCHAR,
	"subscribed_to_username" VARCHAR,
	 PRIMARY KEY ("subscriber_username","subscribed_to_username")
);

CREATE TABLE "comments" (
	"id" SERIAL,
	"created_at" TIMESTAMP,
	"username" VARCHAR,
	"video_id" INTEGER,
	"content" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "videos" (
	"id" SERIAL,
	"created_at" TIMESTAMP,
	"title" VARCHAR,
	"username" VARCHAR,
	"url" TEXT,
	"thumbnail_image" TEXT,
	"description" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"username" VARCHAR,
	"password" TEXT,
	"created_at" TIMESTAMP,
	"first_name" TEXT,
	"last_name" TEXT,
	"email" TEXT,
	"avatar_image" TEXT,
	"cover_image" TEXT,
	"about" TEXT,
	 PRIMARY KEY ("username")
);
