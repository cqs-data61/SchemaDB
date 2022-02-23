DROP DATABASE IF EXISTS "schema2293";
CREATE DATABASE "schema2293";
USE "schema2293";
CREATE TABLE "emailuser" (
	"useremail" VARCHAR,
	"username" VARCHAR,
	"userpassword" VARCHAR,
	"avatarurl" TEXT,
	"showavatar" BOOLEAN
);

CREATE TABLE "mail" (
	"id" VARCHAR,
	"useremail" VARCHAR,
	"mailbox" VARCHAR,
	"mail" LONGTEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "dummy" (
	"created" DATETIME
);
