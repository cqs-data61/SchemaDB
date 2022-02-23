DROP DATABASE IF EXISTS "schema6";
CREATE DATABASE "schema6";
USE "schema6";
CREATE TABLE "profiles" (
	"id" INTEGER,
	"fname" LONGNAME,
	"lname" LONGNAME,
	"uni" INTEGER,
	"favesoc" TEXTSTRING,
	"prevattended" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "eventcategories" (
	"eventid" INTEGER,
	"categoryid" INTEGER,
	 PRIMARY KEY ("eventid","categoryid")
);

CREATE TABLE "events" (
	"id" BIGINT,
	"eventtitle" TEXTSTRING,
	"startdate" LONGSTRING,
	"enddate" LONGSTRING,
	"description" TEXTSTRING,
	"location" TEXTSTRING,
	"host" TEXTSTRING,
	"eventimage" LONGSTRING,
	 PRIMARY KEY ("id")
);

CREATE TABLE "universities" (
	"id" INTEGER,
	"name" LONGNAME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "categories" (
	"id" SERIAL,
	"type" LONGSTRING,
	 PRIMARY KEY ("id")
);

CREATE TABLE "societies" (
	"id" TEXTSTRING,
	"uni" LONGSTRING,
	"name" LONGSTRING,
	"description" TEXTSTRING,
	"societyimage" TEXTSTRING,
	 PRIMARY KEY ("id")
);
