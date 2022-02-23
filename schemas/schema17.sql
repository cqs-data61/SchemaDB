DROP DATABASE IF EXISTS "schema17";
CREATE DATABASE "schema17";
USE "schema17";
CREATE TABLE "favorites" (
	"gameid" INTEGER,
	"userid" INTEGER,
	"title" TEXT,
	"img" TEXT,
	"deck" TEXT,
	"createdat" DATETIME
);

CREATE TABLE "threadtracker" (
	"postid" SERIAL,
	"gameid" INTEGER,
	"message" TEXT,
	"userid" INTEGER,
	"replyto" INTEGER,
	"createdat" DATETIME
);

CREATE TABLE "userinfo" (
	"userid" SERIAL,
	"username" TEXT,
	"password" TEXT,
	"createdat" DATETIME,
	 PRIMARY KEY ("userid")
);
