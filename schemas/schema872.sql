DROP DATABASE IF EXISTS "schema872";
CREATE DATABASE "schema872";
USE "schema872";
CREATE TABLE "city_id" (
	"id" SERIAL,
	"city" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "job_user" (
	"id" SERIAL,
	"name" TEXT,
	"email" TEXT,
	"password" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "photo" (
	"id" SERIAL,
	"name" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "candidate" (
	"id" SERIAL,
	"name" TEXT,
	"cityid" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "post" (
	"id" SERIAL,
	"name" TEXT,
	 PRIMARY KEY ("id")
);
