DROP DATABASE IF EXISTS "schema1134";
CREATE DATABASE "schema1134";
USE "schema1134";
CREATE TABLE "region_tiles" (
	"region_id" INTEGER,
	"tile_id" INTEGER,
	 PRIMARY KEY ("region_id","tile_id")
);

CREATE TABLE "region_resources" (
	"region_id" INTEGER,
	"resource_id" INTEGER,
	 PRIMARY KEY ("region_id","resource_id")
);

CREATE TABLE "regions" (
	"id" INTEGER,
	"definition" TEXT,
	"description" BLOB,
	 PRIMARY KEY ("id")
);

CREATE TABLE "tiles" (
	"id" INTEGER,
	"url_template" TEXT,
	"pixel_ratio" INTEGER,
	"z" INTEGER,
	"x" INTEGER,
	"y" INTEGER,
	"expires" INTEGER,
	"modified" INTEGER,
	"etag" TEXT,
	"data" BLOB,
	"compressed" INTEGER,
	"accessed" INTEGER,
	"must_revalidate" INTEGER,
	 PRIMARY KEY ("url_template","pixel_ratio","z","x","y")
);

CREATE TABLE "resources" (
	"id" INTEGER,
	"url" TEXT,
	"kind" INTEGER,
	"expires" INTEGER,
	"modified" INTEGER,
	"etag" TEXT,
	"data" BLOB,
	"compressed" INTEGER,
	"accessed" INTEGER,
	"must_revalidate" INTEGER,
	 PRIMARY KEY ("url")
);
