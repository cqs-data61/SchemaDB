DROP DATABASE IF EXISTS "schema938";
CREATE DATABASE "schema938";
USE "schema938";
CREATE TABLE "chapters" (
	"id" INTEGER,
	"created" TIMESTAMP,
	"chapter_title" TEXT,
	"audio_path" TEXT,
	"textplot_path" TEXT,
	"text" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "userdata" (
	"user_id" TEXT,
	"experimental_condition" TEXT,
	"chapter_list" TEXT
);

CREATE TABLE "user" (
	"id" INTEGER,
	"username" TEXT,
	"password" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "recordings" (
	"id" INTEGER,
	"user_id" INTEGER,
	"created" TIMESTAMP,
	"chapter_id" TEXT,
	"chapter_order" TEXT,
	"trial_id" TEXT,
	"is_baseline" TEXT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_recordings_to_user" FOREIGN KEY ("user_id") REFERENCES "user" ("id")
);
