DROP DATABASE IF EXISTS "schema1016";
CREATE DATABASE "schema1016";
USE "schema1016";
CREATE TABLE "revision_before_revision" (
	"prev" BIGSERIAL,
	"next" BIGSERIAL
);

CREATE TABLE "revision_in_origin" (
	"revision" BIGINT,
	"origin" BIGINT
);

CREATE TABLE "directory_in_revision" (
	"directory" BIGINT,
	"revision" BIGINT,
	"location" BIGINT
);

CREATE TABLE "content_in_directory" (
	"content" BIGINT,
	"directory" BIGINT,
	"location" BIGINT
);

CREATE TABLE "content_in_revision" (
	"content" BIGINT,
	"revision" BIGINT,
	"location" BIGINT
);

CREATE TABLE "origin" (
	"id" BIGSERIAL,
	"url" UNIX_PATH,
	 PRIMARY KEY ("id")
);

CREATE TABLE "location" (
	"id" BIGSERIAL,
	"path" UNIX_PATH,
	 PRIMARY KEY ("id")
);

CREATE TABLE "revision" (
	"id" BIGSERIAL,
	"sha1" SHA1_GIT,
	"date" DATETIME,
	"origin" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "directory" (
	"id" BIGSERIAL,
	"sha1" SHA1_GIT,
	"date" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "content" (
	"id" BIGSERIAL,
	"sha1" SHA1_GIT,
	"date" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "dbversion" (
	"version" INT,
	"release" DATETIME,
	"description" TEXT,
	 PRIMARY KEY ("version")
);
