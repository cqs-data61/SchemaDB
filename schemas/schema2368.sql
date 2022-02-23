DROP DATABASE IF EXISTS "schema2368";
CREATE DATABASE "schema2368";
USE "schema2368";
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
