DROP DATABASE IF EXISTS "schema472";
CREATE DATABASE "schema472";
USE "schema472";
CREATE TABLE "sightings" (
	"spotid" SERIAL,
	"userid" TEXT,
	"registration" TEXT,
	"spotdate" TEXT,
	"spottime" TEXT,
	"location_field" TEXT,
	"notes" TEXT,
	"imgurl" TEXT,
	"owner_field" TEXT,
	"model" TEXT,
	"firstflt" TEXT,
	"delivery" TEXT,
	"numengines" TEXT,
	"engtype" TEXT,
	"age" TEXT,
	"plane_status" TEXT,
	 PRIMARY KEY ("spotid")
);

CREATE TABLE "users" (
	"userid" SERIAL,
	"email" TEXT,
	"password" TEXT,
	"first_name" TEXT,
	"last_name" TEXT,
	 PRIMARY KEY ("userid")
);
