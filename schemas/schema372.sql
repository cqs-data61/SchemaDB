DROP DATABASE IF EXISTS "schema372";
CREATE DATABASE "schema372";
USE "schema372";
CREATE TABLE "language" (
	"id" INT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "country" (
	"id" INT,
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
	 PRIMARY KEY ("id")
);

CREATE TABLE "countrylanguage" (
	"idcountry" INT,
	"idlanguage" INT,
	"isofficial" ENUM,
	"percentage" FLOAT,
	 PRIMARY KEY ("idcountry","idlanguage"),
	 CONSTRAINT "fk_constraint_Country" FOREIGN KEY ("idcountry") REFERENCES "country" ("id")
);

CREATE TABLE "city" (
	"id" INT,
	"idcountry" INT,
	"name" CHAR,
	"district" CHAR,
	"population" INT,
	 PRIMARY KEY ("id")
);
