DROP DATABASE IF EXISTS "schema2127";
CREATE DATABASE "schema2127";
USE "schema2127";
CREATE TABLE "review" (
	"id" BIGINT,
	"team_id" BIGINT,
	"user_id" BIGINT,
	"description" TEXT,
	"fun" INT,
	"interested" INT,
	"nice" INT,
	"time" INT,
	"status" VARCHAR,
	"created" TIMESTAMP,
	"updated" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "user" (
	"id" BIGINT,
	"email" VARCHAR,
	"fullname" VARCHAR,
	"nickname" VARCHAR,
	"picture" VARCHAR,
	"role" VARCHAR,
	"created" TIMESTAMP,
	"updated" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "team" (
	"id" BIGINT,
	"end_time" DATETIME,
	"location" VARCHAR,
	"max_member_count" BIGINT,
	"start_time" DATETIME,
	"status" VARCHAR,
	"project_id" BIGINT,
	"subject" VARCHAR,
	"description" TEXT,
	"created" TIMESTAMP,
	"updated" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "project" (
	"id" BIGINT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "member" (
	"id" BIGINT,
	"role" VARCHAR,
	"team_id" BIGINT,
	"user_id" BIGINT,
	"creator" BIT,
	"participation" BIT,
	"created" TIMESTAMP,
	"updated" TIMESTAMP,
	 PRIMARY KEY ("id")
);
