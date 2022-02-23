DROP DATABASE IF EXISTS "schema1754";
CREATE DATABASE "schema1754";
USE "schema1754";
CREATE TABLE "device" (
	"mac" VARCHAR,
	"owner" BIGINT,
	"type" ENUM,
	 PRIMARY KEY ("mac")
);

CREATE TABLE "user" (
	"id" BIGINT,
	"name" TEXT,
	 PRIMARY KEY ("id")
);
