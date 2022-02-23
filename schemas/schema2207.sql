DROP DATABASE IF EXISTS "schema2207";
CREATE DATABASE "schema2207";
USE "schema2207";
CREATE TABLE "users_audio" (
	"id" SERIAL,
	"user_id" INT,
	"audio_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "audio" (
	"id" SERIAL,
	"video_id" VARCHAR,
	"name" VARCHAR,
	"path" VARCHAR,
	"created_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"id" SERIAL,
	"name" VARCHAR,
	"chat_id" INT,
	 PRIMARY KEY ("id")
);
