DROP DATABASE IF EXISTS "schema2315";
CREATE DATABASE "schema2315";
USE "schema2315";
CREATE TABLE "filetbl" (
	"id" LONG,
	"origfilename" VARCHAR,
	"filename" VARCHAR,
	"filepath" VARCHAR,
	"createdat" TIMESTAMP
);

CREATE TABLE "boardtbl" (
	"id" LONG,
	"title" VARCHAR,
	"content" VARCHAR,
	"completed" TINYINT,
	"createdat" TIMESTAMP
);
