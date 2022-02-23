DROP DATABASE IF EXISTS "schema1303";
CREATE DATABASE "schema1303";
USE "schema1303";
CREATE TABLE "images" (
	"id" SERIAL,
	"user_username" VARCHAR,
	"image_url" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "likes" (
	"id" SERIAL,
	"user_username" VARCHAR,
	"likes" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "friends" (
	"id" SERIAL,
	"user_1" VARCHAR,
	"user_2" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"username" VARCHAR,
	"password" TEXT,
	"first_name" TEXT,
	"last_name" TEXT,
	"email" TEXT,
	"hobbies" TEXT,
	"interests" TEXT,
	"zip" VARCHAR,
	"radius" INT,
	 PRIMARY KEY ("username")
);
