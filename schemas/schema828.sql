DROP DATABASE IF EXISTS "schema828";
CREATE DATABASE "schema828";
USE "schema828";
CREATE TABLE "post" (
	"id" INTEGER,
	"date" TEXT,
	"created" TEXT,
	"updated" TEXT,
	"media_link" TEXT,
	"media_story" TEXT,
	"user_id" REFERENCES,
	"post_status" TEXT,
	"post_details" LONGTEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "user" (
	"id" INTEGER,
	"username" TEXT,
	"password" TEXT,
	"api_key" TEXT,
	"email" TEXT,
	"created" TEXT,
	"updated" TEXT,
	 PRIMARY KEY ("id")
);
