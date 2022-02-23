DROP DATABASE IF EXISTS "schema812";
CREATE DATABASE "schema812";
USE "schema812";
CREATE TABLE "thanks" (
	"guildid" VARCHAR,
	"userid" VARCHAR,
	"thanks" INT,
	"last_thanks" TIMESTAMP,
	 PRIMARY KEY ("guildid")
);

CREATE TABLE "submissions" (
	"guildid" VARCHAR,
	"msgid" BIGINT,
	"author" VARCHAR,
	"message" VARCHAR,
	"last_edited" TIMESTAMP,
	"dayno" INT
);

CREATE TABLE "challenge" (
	"guildid" VARCHAR,
	"msgid" BIGINT,
	"moderator" VARCHAR,
	"title" VARCHAR,
	"description" VARCHAR,
	"dayno" INT,
	"last_edited" TIMESTAMP
);

CREATE TABLE "points" (
	"guildid" VARCHAR,
	"user" VARCHAR,
	"xplogid" VARCHAR,
	"nextlevel" INT,
	"currentpoints" INT,
	"remainingpoints" INT
);

CREATE TABLE "challenges" (
	"guildid" VARCHAR,
	"player" VARCHAR,
	"challengeannouncementschannel" VARCHAR,
	"submissionsdumpchannel" VARCHAR,
	"challengeparticipants" VARCHAR
);

CREATE TABLE "suggs" (
	"nosugg" BIGINT,
	"author" VARCHAR,
	"avatar" VARCHAR,
	"message" VARCHAR,
	"moderator" VARCHAR,
	"last_edited" TIMESTAMP,
	"status" VARCHAR
);

CREATE TABLE "reactionroles" (
	"guildid" VARCHAR,
	"messageid" VARCHAR,
	"emoji" VARCHAR,
	"roleid" VARCHAR
);

CREATE TABLE "guilds" (
	"guildid" VARCHAR,
	"guildname" VARCHAR,
	"ownerid" VARCHAR,
	"ownername" VARCHAR,
	"region" VARCHAR,
	"membercount" BIGINT,
	"createdat" DATE
);
