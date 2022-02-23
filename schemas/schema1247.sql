DROP DATABASE IF EXISTS "schema1247";
CREATE DATABASE "schema1247";
USE "schema1247";
CREATE TABLE "stylepics" (
	"userid" VARCHAR,
	"name" VARCHAR,
	"picture" VARCHAR,
	"desc" MEDIUMTEXT,
	"picturebytes" INT,
	 PRIMARY KEY ("userid","name")
);

CREATE TABLE "reviewflags" (
	"reviewid" BIGINT,
	"flagger" VARCHAR,
	"flagtype" CHAR,
	"notes" MEDIUMTEXT,
	"created" DATETIME
);

CREATE TABLE "privileges" (
	"code" CHAR,
	"name" VARCHAR
);

CREATE TABLE "persistentsessions" (
	"id" VARCHAR,
	"userid" VARCHAR,
	"lastlogin" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "osprivs" (
	"osid" INT,
	"userid" VARCHAR
);

CREATE TABLE "nonces" (
	"nonceid" VARCHAR,
	"hash" VARCHAR,
	"created" TIMESTAMP
);

CREATE TABLE "logins" (
	"uid" VARCHAR,
	"ip" VARCHAR,
	"when" DATETIME
);

CREATE TABLE "formatprivs" (
	"fmtid" INT,
	"userid" VARCHAR
);

CREATE TABLE "userfilters" (
	"userid" CHAR,
	"userid" CHAR,
	"targetuserid" CHAR,
	"targetuserid" CHAR,
	"filtertype" CHAR,
	"filtertype" CHAR
);

CREATE TABLE "audit" (
	"userid" VARCHAR,
	"ts" TIMESTAMP,
	"action" MEDIUMTEXT
);
