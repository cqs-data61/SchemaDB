DROP DATABASE IF EXISTS "schema1500";
CREATE DATABASE "schema1500";
USE "schema1500";
CREATE TABLE "friends" (
	"id" SERIAL,
	"user_id1" INTEGER,
	"user_id2" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "messages" (
	"id" SERIAL,
	"time" TIMESTAMP,
	"thread_id" INTEGER,
	"user_id" INTEGER,
	"text" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "privmessages" (
	"id" SERIAL,
	"chat" TEXT,
	"text" TEXT,
	"user_id" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "threads" (
	"id" SERIAL,
	"title" TEXT,
	"time" TIMESTAMP,
	"user_id" INTEGER,
	"topic" TEXT,
	"description" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"id" SERIAL,
	"name" TEXT,
	"password" TEXT,
	"bio" TEXT,
	 PRIMARY KEY ("id")
);
