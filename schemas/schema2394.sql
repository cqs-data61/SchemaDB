DROP DATABASE IF EXISTS "schema2394";
CREATE DATABASE "schema2394";
USE "schema2394";
CREATE TABLE "runs" (
	"runid" INTEGER,
	"node_count" INTEGER,
	"visibility_delay" INTEGER,
	"query_delay" INTEGER,
	"block_size" INTEGER,
	"deadline" REAL,
	"latency" REAL,
	"bandwidth" REAL,
	"duration" INTEGER,
	"dup_blocks" INTEGER,
	"workload" TEXT,
	"strategy" TEXT,
	"manual" INTEGER
);

CREATE TABLE "file_times" (
	"timestamp" INTEGER,
	"time" INTEGER,
	"runid" INTEGER,
	"peerid" TEXT,
	"size" INTEGER
);

CREATE TABLE "block_times" (
	"timestamp" INTEGER,
	"time" INTEGER,
	"runid" INTEGER,
	"peerid" TEXT
);
