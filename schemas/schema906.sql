DROP DATABASE IF EXISTS "schema906";
CREATE DATABASE "schema906";
USE "schema906";
CREATE TABLE "matches" (
	"username_first" VARCHAR,
	"username_second" VARCHAR,
	 PRIMARY KEY ("username_first","username_second")
);

CREATE TABLE "dislikes" (
	"disliker" VARCHAR,
	"disliked" VARCHAR,
	 PRIMARY KEY ("disliker","disliked")
);

CREATE TABLE "likes" (
	"liker" VARCHAR,
	"liked" VARCHAR,
	 PRIMARY KEY ("liker","liked")
);

CREATE TABLE "messages" (
	"id" SERIAL,
	"from_username" VARCHAR,
	"to_username" VARCHAR,
	"body" TEXT,
	"sent_at" DATETIME,
	"read_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"username" VARCHAR,
	"password" TEXT,
	"first_name" TEXT,
	"last_name" TEXT,
	"email" TEXT,
	"age" INTEGER,
	"bio" TEXT,
	"interests" TEXT,
	"image_url" TEXT,
	"location" VARCHAR,
	"radius" INT,
	"is_admin" BOOLEAN,
	 PRIMARY KEY ("username")
);
