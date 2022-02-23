DROP DATABASE IF EXISTS "schema732";
CREATE DATABASE "schema732";
USE "schema732";
CREATE TABLE "userstats" (
	"userid" VARCHAR,
	"guessgame" INTEGER,
	"rockpaperscissors" INTEGER,
	"frogs" INTEGER,
	 PRIMARY KEY ("userid")
);

CREATE TABLE "appuser" (
	"userid" VARCHAR,
	"password" VARCHAR,
	"firstname" VARCHAR,
	"lastname" VARCHAR,
	"gender" VARCHAR,
	 PRIMARY KEY ("userid")
);
