DROP DATABASE IF EXISTS "schema680";
CREATE DATABASE "schema680";
USE "schema680";
CREATE TABLE "topic_config" (
	"topic" VARCHAR,
	"queue_nums" INT,
	"perm" INT,
	"status" VARCHAR,
	"created_timestamp" BIGINT
);

CREATE TABLE "producer_data" (
	"client_id" VARCHAR,
	"group_name" VARCHAR,
	"beat_timestamp" BIGINT
);

CREATE TABLE "message_testtopic_2" (
	"id" INT,
	"topic" VARCHAR,
	"keys" VARCHAR,
	"tags" VARCHAR,
	"body" TEXT,
	"queue_id" INT,
	"born_timestamp" BIGINT,
	"born_host" VARCHAR,
	"msg_id" VARCHAR,
	"properties" VARCHAR,
	"max_recon_times" TINYINT,
	"recon_times" TINYINT,
	"producer_group" VARCHAR,
	"consumer_group" VARCHAR,
	"store_timestamp" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "message_testtopic_1" (
	"id" INT,
	"topic" VARCHAR,
	"keys" VARCHAR,
	"tags" VARCHAR,
	"body" TEXT,
	"queue_id" INT,
	"born_timestamp" BIGINT,
	"born_host" VARCHAR,
	"msg_id" VARCHAR,
	"properties" VARCHAR,
	"max_recon_times" TINYINT,
	"recon_times" TINYINT,
	"producer_group" VARCHAR,
	"consumer_group" VARCHAR,
	"store_timestamp" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "message_testtopic_0" (
	"id" INT,
	"topic" VARCHAR,
	"keys" VARCHAR,
	"tags" VARCHAR,
	"body" TEXT,
	"queue_id" INT,
	"born_timestamp" BIGINT,
	"born_host" VARCHAR,
	"msg_id" VARCHAR,
	"properties" VARCHAR,
	"max_recon_times" TINYINT,
	"recon_times" TINYINT,
	"producer_group" VARCHAR,
	"consumer_group" VARCHAR,
	"store_timestamp" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "message_retry_test_group_0" (
	"id" INT,
	"topic" VARCHAR,
	"keys" VARCHAR,
	"tags" VARCHAR,
	"body" TEXT,
	"queue_id" INT,
	"born_timestamp" BIGINT,
	"born_host" VARCHAR,
	"msg_id" VARCHAR,
	"properties" VARCHAR,
	"max_recon_times" TINYINT,
	"recon_times" TINYINT,
	"producer_group" VARCHAR,
	"consumer_group" VARCHAR,
	"store_timestamp" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "message_dlq_test_group_0" (
	"id" INT,
	"topic" VARCHAR,
	"keys" VARCHAR,
	"tags" VARCHAR,
	"body" TEXT,
	"queue_id" INT,
	"born_timestamp" BIGINT,
	"born_host" VARCHAR,
	"msg_id" VARCHAR,
	"properties" VARCHAR,
	"max_recon_times" TINYINT,
	"recon_times" TINYINT,
	"producer_group" VARCHAR,
	"consumer_group" VARCHAR,
	"store_timestamp" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "lock_table" (
	"lock_id" VARCHAR,
	"lock_value" VARCHAR,
	"lock_timestamp" BIGINT
);

CREATE TABLE "consumer_offset" (
	"topic" VARCHAR,
	"queue_id" INT,
	"group_name" VARCHAR,
	"offset_value" INT,
	"update_timestamp" BIGINT
);

CREATE TABLE "consumer_data" (
	"client_id" VARCHAR,
	"group_name" VARCHAR,
	"consume_type" VARCHAR,
	"message_model" VARCHAR,
	"consume_from" VARCHAR,
	"topic" VARCHAR,
	"sub_version" BIGINT,
	"beat_timestamp" BIGINT
);
