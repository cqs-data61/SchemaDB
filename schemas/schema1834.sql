DROP DATABASE IF EXISTS "schema1834";
CREATE DATABASE "schema1834";
USE "schema1834";
CREATE TABLE "channel" (
	"channel_name" TEXT,
	"network" TEXT,
	"weblink" TEXT,
	"description" TEXT,
	"submit_time" TEXT,
	"approved" INTEGER,
	"approve_time" TEXT,
	 PRIMARY KEY ("channel_name","network")
);

CREATE TABLE "channel_status_new" (
	"channel_name" TEXT,
	"network" TEXT,
	"status_time" TEXT,
	"numusers" INTEGER,
	"topic" TEXT,
	"query_method" TEXT,
	"errmsg" TEXT,
	 CONSTRAINT "fkeycon_channel_status_new_to_channel" FOREIGN KEY ("channel_name","network") REFERENCES "channel" ("channel_name","network")
);
