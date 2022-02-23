DROP DATABASE IF EXISTS "schema2106";
CREATE DATABASE "schema2106";
USE "schema2106";
CREATE TABLE "commentowners" (
	"ownerid" VARCHAR,
	"ipaddress" TEXT,
	"privacymode" TEXT,
	 PRIMARY KEY ("ownerid")
);

CREATE TABLE "discussions" (
	"discussionid" VARCHAR,
	"domain" TEXT,
	"page" TEXT,
	"ownerid" VARCHAR,
	"state" TEXT,
	"lasteventid" VARCHAR,
	"modifiedat" TIMESTAMP,
	"createdat" TIMESTAMP,
	 PRIMARY KEY ("discussionid")
);

CREATE TABLE "comments" (
	"commentid" VARCHAR,
	"discussionid" VARCHAR,
	"parentid" VARCHAR,
	"ownerid" VARCHAR,
	"markdown" TEXT,
	"html" TEXT,
	"plaintext" TEXT,
	"state" TEXT,
	"createdat" TIMESTAMP,
	"lasteventid" VARCHAR,
	"modifiedat" TIMESTAMP,
	 PRIMARY KEY ("commentid"),
	 CONSTRAINT "discussion_id_fk_constraint" FOREIGN KEY ("discussionid") REFERENCES "discussions" ("discussionid"),
	 CONSTRAINT "owner_id_fk_constraint" FOREIGN KEY ("ownerid") REFERENCES "commentowners" ("ownerid")
);
