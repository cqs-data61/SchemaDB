DROP DATABASE IF EXISTS "schema1189";
CREATE DATABASE "schema1189";
USE "schema1189";
CREATE TABLE "persons_of_club" (
	"id" SERIAL,
	"club_id" INTEGER,
	"user_id" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "clubs" (
	"id" SERIAL,
	"club_title" TEXT,
	"club_info" TEXT,
	"club_password" TEXT,
	"user_id" INTEGER,
	"visibility" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "reviews" (
	"id" SERIAL,
	"book_id" INTEGER,
	"stars" INTEGER,
	"text_review" TEXT,
	"visibility" TEXT,
	"sent_at" TIMESTAMP,
	"user_id" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "books" (
	"id" SERIAL,
	"book_title" TEXT,
	"author_name" TEXT,
	"user_id" INTEGER,
	"sent_at" TIMESTAMP,
	"info" TEXT,
	"visibility" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"id" SERIAL,
	"username" TEXT,
	"password" TEXT,
	"admin" INTEGER,
	 PRIMARY KEY ("id")
);
