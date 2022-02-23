DROP DATABASE IF EXISTS "schema813";
CREATE DATABASE "schema813";
USE "schema813";
CREATE TABLE "ways" (
	"id" INTEGER,
	"user" TEXT,
	"uid" INTEGER,
	"version" TEXT,
	"changeset" INTEGER,
	"timestamp" TEXT
);

CREATE TABLE "ways_tags" (
	"id" INTEGER,
	"key" TEXT,
	"value" TEXT,
	"type" TEXT,
	 CONSTRAINT "fkeycon_ways_tags_to_ways" FOREIGN KEY ("id") REFERENCES "ways" ("id")
);

CREATE TABLE "nodes" (
	"id" INTEGER,
	"lat" REAL,
	"lon" REAL,
	"user" TEXT,
	"uid" INTEGER,
	"version" INTEGER,
	"changeset" INTEGER,
	"timestamp" TEXT
);

CREATE TABLE "ways_nodes" (
	"id" INTEGER,
	"node_id" INTEGER,
	"position" INTEGER,
	 CONSTRAINT "fkeycon_ways_nodes_to_nodes" FOREIGN KEY ("node_id") REFERENCES "nodes" ("id"),
	 CONSTRAINT "fkeycon_ways_nodes_to_ways" FOREIGN KEY ("id") REFERENCES "ways" ("id")
);

CREATE TABLE "nodes_tags" (
	"id" INTEGER,
	"key" TEXT,
	"value" TEXT,
	"type" TEXT,
	 CONSTRAINT "fkeycon_nodes_tags_to_nodes" FOREIGN KEY ("id") REFERENCES "nodes" ("id")
);
