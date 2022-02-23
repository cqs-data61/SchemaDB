DROP DATABASE IF EXISTS "schema1911";
CREATE DATABASE "schema1911";
USE "schema1911";
CREATE TABLE "petimages" (
	"id" INT,
	"petid" INT,
	"categoryid" INT,
	"imagefile" VARCHAR,
	"imagename" VARCHAR,
	"imageurl" VARCHAR,
	"createdat" DATE,
	"updatedat" DATE
);

CREATE TABLE "eventcategories" (
	"id" INT,
	"categoryname" VARCHAR
);

CREATE TABLE "pets" (
	"id" INT,
	"userid" INT,
	"petname" VARCHAR,
	"showname" VARCHAR,
	"breedid" INT,
	"petgender" ENUM,
	"petversion" ENUM,
	"petgeneration" INT,
	"petdescription" TEXT,
	"isfavorite" BOOLEAN,
	"isactive" BOOLEAN,
	"isrival" BOOLEAN,
	"ispurebred" BOOLEAN,
	"isnoninbred" BOOLEAN,
	"isunmodified" BOOLEAN,
	"originalowner" VARCHAR,
	"originalprefix" VARCHAR,
	"pcpoints" INT,
	"dgpoints" INT,
	"pkcnumber" VARCHAR,
	"beautypoints" INT,
	"healthpoints" INT,
	"lovepoints" INT,
	"skillpoints" INT,
	"createdat" DATE,
	"updatedat" DATE
);

CREATE TABLE "petbreeds" (
	"id" INT,
	"speciesid" INT,
	"breedname" VARCHAR
);

CREATE TABLE "petspecies" (
	"id" INT,
	"speciesname" VARCHAR
);

CREATE TABLE "users" (
	"id" INT,
	"roleid" INT,
	"useremail" VARCHAR,
	"username" VARCHAR,
	"userpassword" VARCHAR,
	"websitename" VARCHAR,
	"websiteurl" VARCHAR,
	"teamname" VARCHAR,
	"teamprefix" VARCHAR,
	"teamdescription" VARCHAR,
	"teamsize" INT,
	"tokens" INT,
	"tickets" INT,
	"beautytreats" INT,
	"beautypotions" INT,
	"healthtreats" INT,
	"healthpotions" INT,
	"lovetreats" INT,
	"lovepotions" INT,
	"skilltreats" INT,
	"skillpotions" INT,
	"invitecode" INT,
	"friendcode" INT,
	"createdat" DATE,
	"updatedat" DATE
);

CREATE TABLE "userroles" (
	"id" INT,
	"rolename" VARCHAR
);
