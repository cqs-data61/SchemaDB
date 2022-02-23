DROP DATABASE IF EXISTS "schema933";
CREATE DATABASE "schema933";
USE "schema933";
CREATE TABLE "trep_shard_channel" (
	"shard_id" VARCHAR,
	"channel" INT,
	 PRIMARY KEY ("shard_id")
);

CREATE TABLE "trep_shard" (
	"shard_id" VARCHAR,
	"master" VARCHAR,
	"critical" SMALLINT,
	 PRIMARY KEY ("shard_id")
);

CREATE TABLE "trep_commit_seqno" (
	"task_id" INT,
	"seqno" BIGINT,
	"fragno" SMALLINT,
	"last_frag" BOOLEAN,
	"source_id" VARCHAR,
	"epoch_number" BIGINT,
	"eventid" VARCHAR,
	"applied_latency" INT,
	"update_timestamp" TIMESTAMP,
	"shard_id" VARCHAR,
	"extract_timestamp" TIMESTAMP,
	 PRIMARY KEY ("task_id")
);

CREATE TABLE "heartbeat" (
	"id" BIGINT,
	"seqno" BIGINT,
	"eventid" VARCHAR,
	"source_tstamp" TIMESTAMP,
	"target_tstamp" TIMESTAMP,
	"lag_millis" BIGINT,
	"salt" BIGINT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "consistency" (
	"db" CHAR,
	"tbl" CHAR,
	"id" INT,
	"row_offset" INT,
	"row_limit" INT,
	"this_crc" CHAR,
	"this_cnt" INT,
	"master_crc" CHAR,
	"master_cnt" INT,
	"ts" TIMESTAMP,
	"method" CHAR,
	 PRIMARY KEY ("db","tbl","id")
);
