DROP DATABASE IF EXISTS "schema240";
CREATE DATABASE "schema240";
USE "schema240";
CREATE TABLE "shapes" (
	"id" INT,
	"animal" VARCHAR,
	"seen" BOOLEAN,
	"challengerating" FLOAT,
	"size" ENUM,
	"armorclass" TINYINT,
	"hitpoints" TINYINT,
	"speed" TINYINT,
	"flyspeed" TINYINT,
	"swimspeed" TINYINT,
	"climbspeed" TINYINT,
	"strength" TINYINT,
	"dexterity" TINYINT,
	"constitution" TINYINT,
	"intelligence" TINYINT,
	"wisdom" TINYINT,
	"charisma" TINYINT,
	"skills" VARCHAR,
	"senses" VARCHAR,
	"ability1" VARCHAR,
	"ability2" VARCHAR,
	"ability3" VARCHAR,
	"action1" VARCHAR,
	"action2" VARCHAR,
	"action3" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "user" (
	"userid" INT,
	"charactername" VARCHAR,
	"druidlevel" TINYINT,
	 PRIMARY KEY ("userid")
);
