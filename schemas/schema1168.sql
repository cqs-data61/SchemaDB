DROP DATABASE IF EXISTS "schema1168";
CREATE DATABASE "schema1168";
USE "schema1168";
CREATE TABLE "votes" (
	"userid" TEXT,
	"postid" TEXT
);

CREATE TABLE "users" (
	"id" MEDIUMTEXT,
	"username" MEDIUMTEXT,
	"password" MEDIUMTEXT,
	"created" DATETIME
);

CREATE TABLE "replies" (
	"id" MEDIUMTEXT,
	"parentid" MEDIUMTEXT,
	"userid" MEDIUMTEXT,
	"author" MEDIUMTEXT,
	"body" MEDIUMTEXT,
	"created" DATETIME
);

CREATE TABLE "posts" (
	"id" LONGTEXT,
	"userid" LONGTEXT,
	"author" LONGTEXT,
	"title" LONGTEXT,
	"body" LONGTEXT,
	"gamerrage" TINYINT,
	"votes" INT,
	"created" DATETIME
);

CREATE TABLE "comments" (
	"id" MEDIUMTEXT,
	"postid" MEDIUMTEXT,
	"userid" MEDIUMTEXT,
	"author" MEDIUMTEXT,
	"body" MEDIUMTEXT,
	"created" DATETIME
);
