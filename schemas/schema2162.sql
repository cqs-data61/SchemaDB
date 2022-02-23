DROP DATABASE IF EXISTS "schema2162";
CREATE DATABASE "schema2162";
USE "schema2162";
CREATE TABLE "attributes" (
	"event_id" BIGINT,
	"key" VARCHAR,
	"composite_key" VARCHAR,
	"value" VARCHAR
);

CREATE TABLE "events" (
	"rowid" BIGSERIAL,
	"block_id" BIGINT,
	"tx_id" BIGINT,
	"type" VARCHAR,
	 PRIMARY KEY ("rowid")
);

CREATE TABLE "tx_results" (
	"rowid" BIGSERIAL,
	"block_id" BIGINT,
	"index" INTEGER,
	"created_at" DATETIME,
	"tx_hash" VARCHAR,
	"tx_result" BYTEA,
	 PRIMARY KEY ("rowid")
);

CREATE TABLE "blocks" (
	"rowid" BIGSERIAL,
	"height" BIGINT,
	"chain_id" VARCHAR,
	"created_at" DATETIME,
	 PRIMARY KEY ("rowid")
);
