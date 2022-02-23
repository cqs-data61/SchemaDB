DROP DATABASE IF EXISTS "schema686";
CREATE DATABASE "schema686";
USE "schema686";
CREATE TABLE "schema_version" (
	"version" INTEGER
);

CREATE TABLE "adminlog" (
	"id" SERIAL,
	"user_id" INTEGER,
	"action" ENUM,
	"comment" TEXT,
	"action_user_id" INTEGER,
	"actiontime" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "proxy" (
	"id" SERIAL,
	"voter_id" INTEGER,
	"proxy_id" INTEGER,
	"granted" TIMESTAMP,
	"granted_by" INT,
	"revoked" TIMESTAMP,
	"revoked_by" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "vote" (
	"motion_id" INTEGER,
	"voter_id" INTEGER,
	"result" ENUM,
	"entered" TIMESTAMP,
	"proxy_id" INTEGER,
	 PRIMARY KEY ("motion_id","voter_id")
);

CREATE TABLE "motion" (
	"id" SERIAL,
	"identifier" VARCHAR,
	"name" VARCHAR,
	"type" VARCHAR,
	"host" VARCHAR,
	"content" TEXT,
	"posed" TIMESTAMP,
	"posed_by" INT,
	"deadline" TIMESTAMP,
	"canceled" TIMESTAMP,
	"cancelation_reason" TEXT,
	"canceled_by" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "voter" (
	"id" SERIAL,
	"email" VARCHAR,
	"host" VARCHAR,
	 PRIMARY KEY ("id")
);
