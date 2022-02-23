DROP DATABASE IF EXISTS "schema1527";
CREATE DATABASE "schema1527";
USE "schema1527";
CREATE TABLE "team_members" (
	"id" INT,
	"memberid" TEXT
);

CREATE TABLE "teams" (
	"id" SERIAL,
	"teamname" TEXT,
	"distance" NUMERIC,
	"joincode" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "walks" (
	"id" TEXT,
	"username" TEXT,
	"distance" NUMERIC,
	"walkdate" DATE,
	"trackedwithfit" BOOLEAN
);

CREATE TABLE "blacklist" (
	"id" TEXT,
	"wrdsbusername" TEXT,
	"valid" SMALLINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "admins" (
	"id" TEXT,
	"wrdsbusername" TEXT,
	"valid" SMALLINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"id" TEXT,
	"email" TEXT,
	"username" TEXT,
	"wrdsbusername" TEXT,
	"distance" NUMERIC,
	"position" SMALLINT,
	"likes" SMALLINT,
	"likediff" SMALLINT,
	"liked" TEXT,
	"active" SMALLINT,
	"refreshtoken" TEXT,
	"googlefit" BOOLEAN,
	"teamid" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "multipliers" (
	"multiplydate" DATE,
	"factor" INT,
	 PRIMARY KEY ("multiplydate")
);

CREATE TABLE "announcements" (
	"id" SERIAL,
	"notice" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "total" (
	"distance" NUMERIC
);
