DROP DATABASE IF EXISTS "schema1034";
CREATE DATABASE "schema1034";
USE "schema1034";
CREATE TABLE "user" (
	"id" INT,
	"email" TEXT,
	"password" TEXT,
	"realname" TEXT,
	"perm_article" TINYINT,
	"perm_admin" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "topic" (
	"id" INT,
	"user_id" INT,
	"title" TEXT,
	"created" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "session" (
	"sid" VARCHAR,
	"session" VARCHAR,
	"lastseen" DATETIME,
	 PRIMARY KEY ("sid")
);

CREATE TABLE "post" (
	"id" INT,
	"topic_id" INT,
	"user_id" INT,
	"content" TEXT,
	"created" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "article" (
	"id" INT,
	"user_id" INT,
	"title" TEXT,
	"content" TEXT,
	"need_moderate" TINYINT,
	"created" TIMESTAMP,
	 PRIMARY KEY ("id")
);
