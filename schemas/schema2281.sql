DROP DATABASE IF EXISTS "schema2281";
CREATE DATABASE "schema2281";
USE "schema2281";
CREATE TABLE "path" (
	"p" TEXT
);

CREATE TABLE "clip" (
	"filename" TEXT,
	"video_filename_no_ext" TEXT,
	"state" INT,
	 PRIMARY KEY ("filename")
);

CREATE TABLE "video" (
	"filename" TEXT,
	"filename_no_ext" TEXT,
	"streamer" TEXT,
	"date" TEXT,
	"title" TEXT,
	 PRIMARY KEY ("filename")
);

CREATE TABLE "user" (
	"id" INTEGER,
	"username" TEXT,
	"password" TEXT,
	 PRIMARY KEY ("id")
);
