DROP DATABASE IF EXISTS "schema2490";
CREATE DATABASE "schema2490";
USE "schema2490";
CREATE TABLE "comments" (
	"id" SERIAL,
	"user_id" INTEGER,
	"post_id" INTEGER,
	"comment" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"id" SERIAL,
	"username" TEXT,
	"email" TEXT,
	"password_digest" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "posts" (
	"id" SERIAL,
	"title" TEXT,
	"post_text" VARCHAR,
	"image_url" TEXT,
	"video_url" TEXT,
	"created_at" TIMESTAMP,
	"user_id" INTEGER,
	 PRIMARY KEY ("id")
);
