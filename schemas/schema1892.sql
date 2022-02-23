DROP DATABASE IF EXISTS "schema1892";
CREATE DATABASE "schema1892";
USE "schema1892";
CREATE TABLE "variables" (
	"id" IDENTITY,
	"type" VARCHAR,
	"name" VARCHAR,
	"template_id" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "repeated_message" (
	"id" IDENTITY,
	"text" VARCHAR,
	"template_id" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "template_recipients" (
	"id" IDENTITY,
	"address" VARCHAR,
	"template_id" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "templates" (
	"template_id" VARCHAR,
	"template" VARCHAR,
	 PRIMARY KEY ("template_id")
);

CREATE TABLE "recipient" (
	"address" VARCHAR,
	 PRIMARY KEY ("address")
);
