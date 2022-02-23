DROP DATABASE IF EXISTS "schema1022";
CREATE DATABASE "schema1022";
USE "schema1022";
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
