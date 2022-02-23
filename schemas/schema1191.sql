DROP DATABASE IF EXISTS "schema1191";
CREATE DATABASE "schema1191";
USE "schema1191";
CREATE TABLE "statistics" (
	"id" SERIAL,
	"username" TEXT,
	"game1" INT,
	"game2" INT,
	"other" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "reviews" (
	"id" SERIAL,
	"content" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "game3" (
	"id" SERIAL,
	"creator" INT,
	"question" TEXT,
	"answer" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "game2" (
	"id" SERIAL,
	"content" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "game1" (
	"id" SERIAL,
	"content" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"id" SERIAL,
	"username" TEXT,
	"password" TEXT,
	"role" INT,
	 PRIMARY KEY ("id")
);
