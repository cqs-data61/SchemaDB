DROP DATABASE IF EXISTS "schema2258";
CREATE DATABASE "schema2258";
USE "schema2258";
CREATE TABLE "favorites" (
	"username" VARCHAR,
	"video_id" INTEGER,
	 PRIMARY KEY ("username","video_id")
);

CREATE TABLE "videos" (
	"id" SERIAL,
	"title" TEXT,
	"poster" TEXT,
	"video_url" TEXT,
	"duration" NUMERIC,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"username" VARCHAR,
	"password" TEXT,
	"first_name" TEXT,
	"last_name" TEXT,
	"email" TEXT,
	"is_admin" BOOLEAN,
	"profile_pic_url" TEXT,
	 PRIMARY KEY ("username")
);
