DROP DATABASE IF EXISTS "schema2527";
CREATE DATABASE "schema2527";
USE "schema2527";
CREATE TABLE "report_times" (
	"id" INT,
	"hours" INT,
	"idboard" INT,
	"idmember" INT,
	"idcard" INT,
	"arigato" TINYINT,
	"score" TINYINT,
	"created_at" DATE,
	"updated_at" DATE
);

CREATE TABLE "organization_memberships" (
	"id" BIGINT,
	"idmember" BIGINT,
	"idorganization" BIGINT,
	"membertype" ENUM
);

CREATE TABLE "organization_member" (
	"idorganization" BIGINT,
	"idmember" BIGINT
);

CREATE TABLE "organization" (
	"id" BIGINT,
	"displayname" VARCHAR,
	"name" VARCHAR,
	"desc" TEXT,
	"sourcehash" VARCHAR,
	"website" VARCHAR,
	"permission" TINYINT,
	"idmember" BIGINT,
	"logo" VARCHAR,
	"logo_preview" VARCHAR
);

CREATE TABLE "options" (
	"idmixed" BIGINT,
	"model" VARCHAR,
	"key" VARCHAR,
	"value" TEXT
);

CREATE TABLE "notifications_member" (
	"idmember" INT,
	"idnotification" INT,
	"read" TINYINT
);

CREATE TABLE "notifications" (
	"id" INT,
	"type" SMALLINT,
	"data" TEXT,
	"addeddate" INT,
	"idreceive" BIGINT,
	"ideffectmember" INT,
	"name" VARCHAR
);

CREATE TABLE "member" (
	"id" BIGINT,
	"username" VARCHAR,
	"user_id" VARCHAR,
	"company_id" TINYINT,
	"passwordhash" VARCHAR,
	"passwordresettoken" VARCHAR,
	"authkey" VARCHAR,
	"email" VARCHAR,
	"displayname" VARCHAR,
	"initialsname" VARCHAR,
	"avatarhash" VARCHAR,
	"url" VARCHAR,
	"bio" TEXT,
	"status" TINYINT,
	"addeddate" INT,
	"updateddate" INT,
	"typeimg" TINYINT
);

CREATE TABLE "lists" (
	"id" BIGINT,
	"name" VARCHAR,
	"pos" INT,
	"closed" TINYINT,
	"idboard" BIGINT,
	"prefs" TEXT,
	"sort" TINYINT
);

CREATE TABLE "company" (
	"id" INT,
	"name" VARCHAR
);

CREATE TABLE "comments" (
	"id" BIGINT,
	"content" TEXT,
	"addeddate" INT,
	"idcard" BIGINT,
	"idboard" BIGINT,
	"idmember" BIGINT
);

CREATE TABLE "checklist_item" (
	"id" BIGINT,
	"name" VARCHAR,
	"pos" INT,
	"state" TINYINT,
	"idchecklist" BIGINT,
	"due" VARCHAR
);

CREATE TABLE "checklist" (
	"id" BIGINT,
	"name" VARCHAR,
	"pos" INT,
	"idcard" BIGINT,
	"idboard" BIGINT
);

CREATE TABLE "card_members" (
	"idcard" BIGINT,
	"idmember" BIGINT
);

CREATE TABLE "card" (
	"id" BIGINT,
	"displayname" LONGTEXT,
	"name" LONGTEXT,
	"desc" TEXT,
	"due" DOUBLE,
	"badges" TEXT,
	"idattachmentcover" BIGINT,
	"pos" INT,
	"closed" TINYINT,
	"datelastactivity" VARCHAR,
	"idlabels" VARCHAR,
	"idmembers" VARCHAR,
	"idmember" BIGINT,
	"idlist" BIGINT,
	"idboard" BIGINT,
	"startdate" DOUBLE,
	"lastupdated" INT,
	"parentid" VARCHAR,
	"important" TINYINT,
	"urgent" TINYINT
);

CREATE TABLE "board_star" (
	"id" BIGINT,
	"idboard" BIGINT,
	"idmember" BIGINT,
	"pos" INT,
	"isshow" TINYINT
);

CREATE TABLE "board_myprefs" (
	"id" INT
);

CREATE TABLE "board_memberships" (
	"id" BIGINT,
	"idmember" BIGINT,
	"idboard" BIGINT,
	"membertype" ENUM,
	"orgmembertype" ENUM
);

CREATE TABLE "board_member" (
	"idboard" BIGINT,
	"idmember" BIGINT
);

CREATE TABLE "board_labels" (
	"id" INT,
	"name" VARCHAR,
	"color" VARCHAR,
	"used" TINYINT,
	"idboard" BIGINT
);

CREATE TABLE "board" (
	"id" BIGINT,
	"displayname" VARCHAR,
	"name" VARCHAR,
	"desc" TEXT,
	"labelnames" TEXT,
	"subcribed" TINYINT,
	"prefs" TEXT,
	"closed" TINYINT,
	"datelastactivity" INT,
	"idorganization" BIGINT,
	"idmember" BIGINT,
	"slackchanel" VARCHAR
);

CREATE TABLE "attachments" (
	"id" BIGINT,
	"name" VARCHAR,
	"bytes" INT,
	"mimetype" VARCHAR,
	"edgecolor" VARCHAR,
	"previews" TEXT,
	"url" VARCHAR,
	"isuploaded" TINYINT,
	"uploadeddate" INT,
	"idcard" BIGINT,
	"idmember" BIGINT
);

CREATE TABLE "admin" (
	"id" INT,
	"username" VARCHAR,
	"auth_key" VARCHAR,
	"password_hash" VARCHAR,
	"password_reset_token" VARCHAR,
	"email" VARCHAR,
	"status" SMALLINT,
	"created_at" INT,
	"updated_at" INT
);

CREATE TABLE "activity" (
	"id" BIGINT,
	"type" VARCHAR,
	"data" TEXT,
	"key" VARCHAR,
	"idboard" BIGINT,
	"idmember" BIGINT,
	"addeddate" INT
);
