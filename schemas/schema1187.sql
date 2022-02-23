DROP DATABASE IF EXISTS "schema1187";
CREATE DATABASE "schema1187";
USE "schema1187";
CREATE TABLE "users" (
	"id" INT,
	"email" VARCHAR,
	"username" VARCHAR,
	"authorname" VARCHAR,
	"type" ENUM,
	"admin" TINYINT,
	"oauthuserid" VARCHAR,
	"datecreated" TIMESTAMP,
	"lastlogin" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "userratings" (
	"userid" INT,
	"patternid" MEDIUMINT,
	"rating" ENUM,
	"lastupdated" TIMESTAMP
);

CREATE TABLE "sessions" (
	"id" VARCHAR,
	"access" INT,
	"data" VARCHAR,
	"accesstoken" TEXT,
	"type" ENUM,
	"userid" INT
);

CREATE TABLE "savesessions" (
	"id" VARCHAR,
	"expire" INT,
	"patternid" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "patterns" (
	"id" MEDIUMINT,
	"name" VARCHAR,
	"description" TEXT,
	"keywords" TEXT,
	"pattern" TEXT,
	"replace" TEXT,
	"dateadded" DATE,
	"author" VARCHAR,
	"lastaccessed" DATE,
	"content" TEXT,
	"visits" MEDIUMINT,
	"state" VARCHAR,
	"ratingsort" DOUBLE,
	"owner" INT,
	"visibility" ENUM,
	"rating" FLOAT,
	"flavor" ENUM,
	"numpositivevotes" INT,
	"numnegativevotes" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "patternlink" (
	"parentid" INT,
	"userid" INT,
	"patternid" MEDIUMINT
);

CREATE TABLE "favorites" (
	"userid" INT,
	"patternid" INT,
	"dateadded" TIMESTAMP
);
