DROP DATABASE IF EXISTS "schema697";
CREATE DATABASE "schema697";
USE "schema697";
CREATE TABLE "sessions" (
	"id" SERIAL,
	"session_id" TEXT,
	"player_id" INTEGER,
	"start_time" DATETIME,
	"end_time" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "feedback" (
	"id" SERIAL,
	"game_class" TEXT,
	"player_id" INTEGER,
	"session_id" TEXT,
	"points" INTEGER,
	"comments" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "game_statistics" (
	"id" SERIAL,
	"game_class" TEXT,
	"player_id" INTEGER,
	"session_id" TEXT,
	"total_words" INTEGER,
	"words_correct" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "words" (
	"id" SERIAL,
	"class" TEXT,
	"kanji" TEXT,
	"hiragana" TEXT,
	"roomaji" TEXT,
	"english" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"id" SERIAL,
	"name" TEXT,
	"password" TEXT,
	"role" INTEGER,
	 PRIMARY KEY ("id")
);
