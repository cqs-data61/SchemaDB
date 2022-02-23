DROP DATABASE IF EXISTS "schema763";
CREATE DATABASE "schema763";
USE "schema763";
CREATE TABLE "bleats" (
	"id" SERIAL,
	"user_id" INTEGER,
	"bleat_content" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"id" SERIAL,
	"user_name" TEXT,
	"email" TEXT,
	"favorite_thing" TEXT,
	 PRIMARY KEY ("id")
);
