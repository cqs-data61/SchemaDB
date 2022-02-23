DROP DATABASE IF EXISTS "schema870";
CREATE DATABASE "schema870";
USE "schema870";
CREATE TABLE "sentimages" (
	"imageid" INT,
	"fromuserid" INT,
	"touserid" INT,
	"timesent" DATETIME,
	"imagename" VARCHAR,
	 PRIMARY KEY ("imageid")
);

CREATE TABLE "friends" (
	"user1id" INT,
	"user2id" INT,
	 PRIMARY KEY ("user1id","user2id")
);

CREATE TABLE "user" (
	"userid" INT,
	"email" VARCHAR,
	"path" VARCHAR,
	 PRIMARY KEY ("userid")
);
