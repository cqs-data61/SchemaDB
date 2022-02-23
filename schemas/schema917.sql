DROP DATABASE IF EXISTS "schema917";
CREATE DATABASE "schema917";
USE "schema917";
CREATE TABLE "test" (
	"options" LONGTEXT
);

CREATE TABLE "mutes" (
	"userid" BIGINT,
	"guildid" BIGINT,
	"reason" TEXT,
	"starttime" TIMESTAMP,
	"endtime" TIMESTAMP,
	"moderator" BIGINT,
	"id" INTEGER
);

CREATE TABLE "config" (
	"id" BIGINT,
	"prefix" TEXT,
	"logid" BIGINT,
	"joinid" BIGINT,
	"joinmsg" TEXT,
	"logoptions" LONGTEXT,
	"options" TEXT,
	"muteid" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "blacklist" (
	"id" BIGINT,
	"reason" TEXT,
	 PRIMARY KEY ("id")
);
