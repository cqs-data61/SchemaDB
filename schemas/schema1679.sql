DROP DATABASE IF EXISTS "schema1679";
CREATE DATABASE "schema1679";
USE "schema1679";
CREATE TABLE "tags" (
	"id" INT,
	"tag" LONGTEXT,
	"description" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "logfile" (
	"id" INT,
	"path" VARCHAR,
	"hash_first64k" VARCHAR,
	"offset" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "downloadable" (
	"id" INT,
	"s3key" VARCHAR,
	"modified" TIMESTAMP,
	"bytes" BIGINT,
	"mtime" TIMESTAMP,
	"tags" LONGTEXT,
	"etag" VARCHAR,
	"sha2_256" VARCHAR,
	"sha3_256" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "downloads" (
	"id" INT,
	"did" INT,
	"ipaddr" VARCHAR,
	"dtime" DATETIME,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "downloads_ibfk_1" FOREIGN KEY ("did") REFERENCES "downloadable" ("id")
);
