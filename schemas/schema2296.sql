DROP DATABASE IF EXISTS "schema2296";
CREATE DATABASE "schema2296";
USE "schema2296";
CREATE TABLE "blacklist" (
	"id" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "roles" (
	"level" BIGINT,
	"id" BIGINT,
	 PRIMARY KEY ("level")
);

CREATE TABLE "levels" (
	"id" BIGINT,
	"xp" INT,
	 PRIMARY KEY ("id")
);
