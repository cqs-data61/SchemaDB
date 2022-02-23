DROP DATABASE IF EXISTS "schema1996";
CREATE DATABASE "schema1996";
USE "schema1996";
CREATE TABLE "users" (
	"userid" SERIAL,
	"username" TEXT,
	"hashedpassword" TEXT,
	"createdat" DATETIME,
	 PRIMARY KEY ("userid")
);

CREATE TABLE "log" (
	"logid" SERIAL,
	"show" TEXT,
	"episode name" TEXT,
	"season" TEXT,
	"number" TEXT,
	"image" TEXT,
	"date" TEXT,
	"rating" TEXT,
	 PRIMARY KEY ("logid")
);

CREATE TABLE "watchlist" (
	"entryid" SERIAL,
	"show" TEXT,
	"episode name" TEXT,
	"season" TEXT,
	"number" TEXT,
	"image" TEXT,
	"iswatched" BOOLEAN,
	 PRIMARY KEY ("entryid")
);
