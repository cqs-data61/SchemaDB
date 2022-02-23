DROP DATABASE IF EXISTS "schema1506";
CREATE DATABASE "schema1506";
USE "schema1506";
CREATE TABLE "privileges" (
	"id" SERIAL,
	"subject_id" INTEGER,
	"user_id" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "likes" (
	"id" SERIAL,
	"user_id" INTEGER,
	"thread_id" INTEGER,
	"comment_id" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "comments" (
	"id" SERIAL,
	"thread_id" INTEGER,
	"user_id" INTEGER,
	"comment" TEXT,
	"posted" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "threads" (
	"id" SERIAL,
	"subject_id" INTEGER,
	"user_id" INTEGER,
	"topic" TEXT,
	"created" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "subjects" (
	"id" SERIAL,
	"secret" BOOLEAN,
	"subject" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"id" SERIAL,
	"username" TEXT,
	"password" TEXT,
	"created" TIMESTAMP,
	 PRIMARY KEY ("id")
);
