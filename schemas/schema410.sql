DROP DATABASE IF EXISTS "schema410";
CREATE DATABASE "schema410";
USE "schema410";
CREATE TABLE "users" (
	"userid" SERIAL,
	"username" TEXT,
	"chatrooms" LONGTEXT,
	"createdat" DATETIME,
	 PRIMARY KEY ("userid")
);

CREATE TABLE "messages" (
	"messageid" SERIAL,
	"message" TEXT,
	"chatid" TEXT,
	"sender" TEXT,
	"createdat" DATETIME,
	 PRIMARY KEY ("messageid")
);

CREATE TABLE "chatrooms" (
	"chatid" SERIAL,
	"name" TEXT,
	"createdat" DATETIME,
	 PRIMARY KEY ("chatid")
);
