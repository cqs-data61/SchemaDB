DROP DATABASE IF EXISTS "schema1651";
CREATE DATABASE "schema1651";
USE "schema1651";
CREATE TABLE "newscategories" (
	"newsid" BIGINT,
	"categoryid" BIGINT
);

CREATE TABLE "categories" (
	"id" BIGINT,
	"title" TINYTEXT
);

CREATE TABLE "news" (
	"id" BIGINT,
	"title" TINYTEXT,
	"content" LONGTEXT
);
