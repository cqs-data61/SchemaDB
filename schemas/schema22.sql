DROP DATABASE IF EXISTS "schema22";
CREATE DATABASE "schema22";
USE "schema22";
CREATE TABLE "trackers" (
	"id" INT,
	"url" TEXT,
	"seeds" INT,
	"leech" INT,
	"checked" TIMESTAMP
);

CREATE TABLE "sources" (
	"id" INT,
	"title" VARCHAR,
	"url" VARCHAR,
	"torrents" INT
);

CREATE TABLE "rtindex" (
	"id" INT,
	"title" VARCHAR,
	"hash" VARCHAR,
	"source_id" TINYINT,
	"seeds" INT,
	"peers" INT,
	"date" INT,
	"url" VARCHAR,
	"indexed" INT,
	"category" TINYINT,
	"size" INT,
	"files" INT,
	"uploader" VARCHAR,
	"parent" TINYINT
);

CREATE TABLE "queries" (
	"id" INT,
	"query" VARCHAR,
	"type" TINYINT,
	"count" INT,
	"first_date" INT,
	"last_date" INT
);

CREATE TABLE "crawls" (
	"id" INT,
	"source_id" INT,
	"date" TIMESTAMP,
	"added_torrents" INT,
	"updated_torrents" INT,
	"time" INT
);
