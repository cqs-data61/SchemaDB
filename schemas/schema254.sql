DROP DATABASE IF EXISTS "schema254";
CREATE DATABASE "schema254";
USE "schema254";
CREATE TABLE "city" (
	"id" SERIAL,
	"name" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "siteuser" (
	"id" SERIAL,
	"email" TEXT,
	"name" TEXT,
	"password" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "candidate" (
	"id" SERIAL,
	"name" TEXT,
	"photo" TEXT,
	"cityid" INT,
	"registered" DATE,
	 PRIMARY KEY ("id")
);

CREATE TABLE "post" (
	"id" SERIAL,
	"name" TEXT,
	"description" TEXT,
	"created" DATE,
	 PRIMARY KEY ("id")
);
