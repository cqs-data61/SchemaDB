DROP DATABASE IF EXISTS "schema50";
CREATE DATABASE "schema50";
USE "schema50";
CREATE TABLE "follows" (
	"id" INT,
	"followerid" INT,
	"followingid" INT
);

CREATE TABLE "reposts" (
	"id" INT,
	"userid" INT,
	"quackid" INT
);

CREATE TABLE "likes" (
	"id" INT,
	"userid" INT,
	"quackid" INT
);

CREATE TABLE "quacks" (
	"id" INT,
	"body" VARCHAR,
	"userid" INT,
	"dateandtime" DATETIME,
	"repostcount" INT,
	"likecount" INT,
	"replyto" INT
);

CREATE TABLE "users" (
	"id" INT,
	"username" VARCHAR,
	"password" VARCHAR,
	"screenname" VARCHAR,
	"bio" VARCHAR,
	"website" VARCHAR,
	"birthdate" DATE,
	"datejoined" DATETIME,
	"quackcount" INT
);
