DROP DATABASE IF EXISTS "schema955";
CREATE DATABASE "schema955";
USE "schema955";
CREATE TABLE "records" (
	"id" INT4,
	"recordedat" DATETIME,
	"measurements" _FLOAT8,
	"longitude" FLOAT4,
	"latitude" FLOAT4,
	"altitude" FLOAT4,
	"deviceid" INT4,
	 PRIMARY KEY ("id")
);

CREATE TABLE "userprofiles" (
	"id" VARCHAR,
	"name" VARCHAR,
	"createdat" DATETIME,
	"role" ENUM,
	 PRIMARY KEY ("id")
);

CREATE TABLE "projects" (
	"id" INT4,
	"name" VARCHAR,
	"description" VARCHAR,
	"createdat" DATETIME,
	"connectype" ENUM,
	"location" VARCHAR,
	"userid" VARCHAR,
	"categoryid" INT4,
	 PRIMARY KEY ("id")
);

CREATE TABLE "devices" (
	"id" INT4,
	"externalid" VARCHAR,
	"name" VARCHAR,
	"projectid" INT4,
	"userid" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "categories" (
	"id" INT4,
	"name" ENUM,
	"description" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "authtokens" (
	"niceid" INT4,
	"id" TEXT,
	"description" VARCHAR,
	"projectid" INT4,
	"userid" VARCHAR,
	 PRIMARY KEY ("id")
);
