DROP DATABASE IF EXISTS "schema765";
CREATE DATABASE "schema765";
USE "schema765";
CREATE TABLE "docs" (
	"id" INTEGER,
	"title" TEXT,
	"author_name" TEXT,
	"supervisors" TEXT,
	"college" TEXT,
	"type_doc" TEXT,
	"key_words" TEXT,
	"abstract" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "user" (
	"id" INTEGER,
	"username" TEXT,
	"first_name" TEXT,
	"last_name" TEXT,
	"birth_date" DATETIME,
	"password" TEXT,
	 PRIMARY KEY ("id")
);
