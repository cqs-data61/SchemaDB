DROP DATABASE IF EXISTS "schema1916";
CREATE DATABASE "schema1916";
USE "schema1916";
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

CREATE TABLE "board" (
	"id" INT,
	"regdate" DATETIME,
	"updatedate" DATETIME,
	"code" CHAR,
	"name" CHAR,
	"delstatus" TINYINT,
	"deldate" DATETIME
);

CREATE TABLE "article" (
	"id" INT,
	"regdate" DATETIME,
	"updatedate" DATETIME,
	"boardid" INT,
	"memberid" INT,
	"title" CHAR,
	"body" TEXT,
	 CONSTRAINT "fkeycon_article_to_member" FOREIGN KEY ("memberid") REFERENCES "member" ("id"),
	 CONSTRAINT "fkeycon_article_to_board" FOREIGN KEY ("boardid") REFERENCES "board" ("id")
);
