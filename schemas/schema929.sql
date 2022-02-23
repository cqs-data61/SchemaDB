DROP DATABASE IF EXISTS "schema929";
CREATE DATABASE "schema929";
USE "schema929";
CREATE TABLE "hidden_topics" (
	"topic_id" INTEGER,
	"user_id" INTEGER
);

CREATE TABLE "messages" (
	"id" SERIAL,
	"chain_id" INTEGER,
	"content" TEXT,
	"user_id" INTEGER,
	"created_at" TIMESTAMP,
	"visible" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "chains" (
	"id" SERIAL,
	"topic_id" INTEGER,
	"name" TEXT,
	"content" TEXT,
	"user_id" INTEGER,
	"created_at" TIMESTAMP,
	"visible" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"id" SERIAL,
	"username" TEXT,
	"password" TEXT,
	"is_admin" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "topics" (
	"id" SERIAL,
	"name" TEXT,
	"exclusive" INTEGER,
	"visible" INTEGER,
	 PRIMARY KEY ("id")
);
