DROP DATABASE IF EXISTS "schema1809";
CREATE DATABASE "schema1809";
USE "schema1809";
CREATE TABLE "countrylanguage" (
	"countrycode" CHAR,
	"language" CHAR,
	"isofficial" ENUM,
	"percentage" FLOAT,
	 PRIMARY KEY ("countrycode","language")
);

CREATE TABLE "country" (
	"code" CHAR,
	"name" CHAR,
	"continent" ENUM,
	"region" CHAR,
	"surfacearea" FLOAT,
	"indepyear" SMALLINT,
	"population" INT,
	"lifeexpectancy" FLOAT,
	"gnp" FLOAT,
	"gnpold" FLOAT,
	"localname" CHAR,
	"governmentform" CHAR,
	"headofstate" CHAR,
	"capital" INT,
	"code2" CHAR,
	 PRIMARY KEY ("code")
);

CREATE TABLE "city" (
	"id" INT,
	"name" CHAR,
	"countrycode" CHAR,
	"district" CHAR,
	"population" INT,
	 PRIMARY KEY ("id")
);
