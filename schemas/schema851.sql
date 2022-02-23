DROP DATABASE IF EXISTS "schema851";
CREATE DATABASE "schema851";
USE "schema851";
CREATE TABLE "users" (
	"user_id" INTEGER,
	"email" VARCHAR,
	"name" TEXT,
	"surname" TEXT,
	"username" TEXT,
	"gender" BIT,
	"password" TEXT,
	 PRIMARY KEY ("user_id")
);

CREATE TABLE "posts" (
	"id" INTEGER,
	"created" TIMESTAMP,
	"title" TEXT,
	"content" TEXT,
	"user1" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "comments" (
	"cid" INTEGER,
	"ccreated" TIMESTAMP,
	"ccontent" TEXT,
	"user2" INTEGER,
	"posted" INTEGER,
	 PRIMARY KEY ("cid"),
	 CONSTRAINT "fkeycon_comments_to_users" FOREIGN KEY ("user2") REFERENCES "users" ("user_id"),
	 CONSTRAINT "fkeycon_comments_to_posts" FOREIGN KEY ("posted") REFERENCES "posts" ("id")
);
