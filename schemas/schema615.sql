DROP DATABASE IF EXISTS "schema615";
CREATE DATABASE "schema615";
USE "schema615";
CREATE TABLE "bookingrequests" (
	"bookingid" SERIAL,
	"swimmerid" INTEGER,
	"poolid" INTEGER,
	"hostid" INTEGER,
	"date" TEXT,
	"starttime" TEXT,
	"endtime" TEXT,
	"status" TEXT,
	 PRIMARY KEY ("bookingid")
);

CREATE TABLE "pools" (
	"poolid" SERIAL,
	"location" TEXT,
	"price" INTEGER,
	"description" TEXT,
	"rules" TEXT,
	"amenities" TEXT,
	"image" TEXT,
	"hostid" INTEGER,
	 PRIMARY KEY ("poolid")
);

CREATE TABLE "users" (
	"userid" SERIAL,
	"name" TEXT,
	"username" TEXT,
	"password" TEXT,
	 PRIMARY KEY ("userid")
);
