DROP DATABASE IF EXISTS "schema1254";
CREATE DATABASE "schema1254";
USE "schema1254";
CREATE TABLE "answers" (
	"id" SERIAL,
	"user_id" INTEGER,
	"query_id" INTEGER,
	"answer" TEXT,
	"misc" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "queries" (
	"id" SERIAL,
	"user_id" INTEGER,
	"chapter_id" INTEGER,
	"question" TEXT,
	"misc" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "comments" (
	"id" SERIAL,
	"user_id" INTEGER,
	"post_id" INTEGER,
	"row_id" INTEGER,
	"general_comment" BOOLEAN,
	"row_comment" BOOLEAN,
	"chapter_number_on" BOOLEAN,
	"chapter_number" INTEGER,
	"comment" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "chapters" (
	"id" SERIAL,
	"post_id" INTEGER,
	"public" BOOLEAN,
	"row_comments_on" BOOLEAN,
	"inquiry_on" BOOLEAN,
	"chapter_number" INTEGER,
	"text_rows" INTEGER,
	"text_content" TEXT,
	"misc" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "posts" (
	"id" SERIAL,
	"user_id" INTEGER,
	"visible" BOOLEAN,
	"general_comments_on" BOOLEAN,
	"name" TEXT,
	"misc" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"id" SERIAL,
	"username" TEXT,
	"password" TEXT,
	"role" INTEGER,
	 PRIMARY KEY ("id")
);
