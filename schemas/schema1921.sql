DROP DATABASE IF EXISTS "schema1921";
CREATE DATABASE "schema1921";
USE "schema1921";
CREATE TABLE "elfinder_trash" (
	"id" INT,
	"parent_id" INT,
	"name" VARCHAR,
	"content" LONGBLOB,
	"size" INT,
	"mtime" INT,
	"mime" VARCHAR,
	"read" ENUM,
	"write" ENUM,
	"locked" ENUM,
	"hidden" ENUM,
	"width" INT,
	"height" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "elfinder_file" (
	"id" INT,
	"parent_id" INT,
	"name" VARCHAR,
	"content" LONGBLOB,
	"size" INT,
	"mtime" INT,
	"mime" VARCHAR,
	"read" ENUM,
	"write" ENUM,
	"locked" ENUM,
	"hidden" ENUM,
	"width" INT,
	"height" INT,
	 PRIMARY KEY ("id")
);
