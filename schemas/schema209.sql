DROP DATABASE IF EXISTS "schema209";
CREATE DATABASE "schema209";
USE "schema209";
CREATE TABLE "cdp_collection" (
	"id" BIGINT,
	"name" VARCHAR,
	"description" VARCHAR,
	"profile_reach" BIGINT,
	"counted_view" BIGINT,
	"logged_event" BIGINT,
	"media_touchpoint" BIGINT,
	"sample_size" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "cdp_pixeltag" (
	"id" BIGINT,
	"name" VARCHAR,
	"timezone" VARCHAR,
	"website_domains" LONGTEXT,
	"filtering_rules" LONGTEXT,
	"collection_id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "cdp_pixeltag_FK" FOREIGN KEY ("id") REFERENCES "cdp_collection" ("id")
);
