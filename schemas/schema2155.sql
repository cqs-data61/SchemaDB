DROP DATABASE IF EXISTS "schema2155";
CREATE DATABASE "schema2155";
USE "schema2155";
CREATE TABLE "kengroupitem" (
	"id" INT,
	"regdate" DATETIME,
	"updatedate" DATETIME,
	"groupcode" CHAR,
	"relid" INT,
	"sortno" INT
);

CREATE TABLE "hashtag" (
	"id" INT,
	"regdate" DATETIME,
	"updatedate" DATETIME,
	"reltypecode" CHAR,
	"relid" INT,
	"typecode" CHAR,
	"value" TEXT
);

CREATE TABLE "attr" (
	"id" INT,
	"regdate" DATETIME,
	"updatedate" DATETIME,
	"reltypecode" CHAR,
	"relid" INT,
	"typecode" CHAR,
	"type2code" CHAR,
	"value" TEXT
);

CREATE TABLE "ken" (
	"id" INT,
	"regdate" DATETIME,
	"updatedate" DATETIME,
	"memberid" INT,
	"title" CHAR,
	"source" MEDIUMTEXT,
	"result" MEDIUMTEXT,
	"typecode" CHAR,
	"type2code" CHAR,
	"doctypeversion" SMALLINT,
	"publishdate" DATETIME,
	"publishstatus" TINYINT,
	"deldate" DATETIME,
	"delstatus" TINYINT
);

CREATE TABLE "member" (
	"id" INT,
	"regdate" DATETIME,
	"updatedate" DATETIME,
	"loginid" CHAR,
	"loginpw" CHAR,
	"authlevel" SMALLINT,
	"name" CHAR,
	"nickname" CHAR,
	"cellphoneno" CHAR,
	"email" CHAR,
	"delstatus" TINYINT,
	"deldate" DATETIME
);

CREATE TABLE "article" (
	"id" INT,
	"regdate" DATETIME,
	"updatedate" DATETIME,
	"title" CHAR,
	"body" TEXT
);
