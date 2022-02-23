DROP DATABASE IF EXISTS "schema959";
CREATE DATABASE "schema959";
USE "schema959";
CREATE TABLE "write_set" (
	"ws_database" VARCHAR,
	"ws_table" VARCHAR,
	"ws_partition" VARCHAR,
	"ws_txnid" BIGINT,
	"ws_commit_id" BIGINT,
	"ws_operation_type" CHAR
);

CREATE TABLE "aux_table" (
	"mt_key1" VARCHAR,
	"mt_key2" BIGINT,
	"mt_comment" VARCHAR,
	 PRIMARY KEY ("mt_key1","mt_key2")
);

CREATE TABLE "completed_compactions" (
	"cc_id" BIGINT,
	"cc_database" VARCHAR,
	"cc_table" VARCHAR,
	"cc_partition" VARCHAR,
	"cc_state" CHAR,
	"cc_type" CHAR,
	"cc_tblproperties" VARCHAR,
	"cc_worker_id" VARCHAR,
	"cc_start" BIGINT,
	"cc_end" BIGINT,
	"cc_run_as" VARCHAR,
	"cc_highest_txn_id" BIGINT,
	"cc_meta_info" BYTEA,
	"cc_hadoop_job_id" VARCHAR,
	 PRIMARY KEY ("cc_id")
);

CREATE TABLE "next_compaction_queue_id" (
	"ncq_next" BIGINT
);

CREATE TABLE "compaction_queue" (
	"cq_id" BIGINT,
	"cq_database" VARCHAR,
	"cq_table" VARCHAR,
	"cq_partition" VARCHAR,
	"cq_state" CHAR,
	"cq_type" CHAR,
	"cq_tblproperties" VARCHAR,
	"cq_worker_id" VARCHAR,
	"cq_start" BIGINT,
	"cq_run_as" VARCHAR,
	"cq_highest_txn_id" BIGINT,
	"cq_meta_info" BYTEA,
	"cq_hadoop_job_id" VARCHAR,
	 PRIMARY KEY ("cq_id")
);

CREATE TABLE "next_lock_id" (
	"nl_next" BIGINT
);

CREATE TABLE "hive_locks" (
	"hl_lock_ext_id" BIGINT,
	"hl_lock_int_id" BIGINT,
	"hl_txnid" BIGINT,
	"hl_db" VARCHAR,
	"hl_table" VARCHAR,
	"hl_partition" VARCHAR,
	"hl_lock_state" CHAR,
	"hl_lock_type" CHAR,
	"hl_last_heartbeat" BIGINT,
	"hl_acquired_at" BIGINT,
	"hl_user" VARCHAR,
	"hl_host" VARCHAR,
	"hl_heartbeat_count" INTEGER,
	"hl_agent_info" VARCHAR,
	"hl_blockedby_ext_id" BIGINT,
	"hl_blockedby_int_id" BIGINT,
	 PRIMARY KEY ("hl_lock_ext_id","hl_lock_int_id")
);

CREATE TABLE "next_txn_id" (
	"ntxn_next" BIGINT
);

CREATE TABLE "completed_txn_components" (
	"ctc_txnid" BIGINT,
	"ctc_database" VARCHAR,
	"ctc_table" VARCHAR,
	"ctc_partition" VARCHAR
);

CREATE TABLE "txn_components" (
	"tc_txnid" BIGINT,
	"tc_database" VARCHAR,
	"tc_table" VARCHAR,
	"tc_partition" VARCHAR,
	"tc_operation_type" CHAR
);

CREATE TABLE "txns" (
	"txn_id" BIGINT,
	"txn_state" CHAR,
	"txn_started" BIGINT,
	"txn_last_heartbeat" BIGINT,
	"txn_user" VARCHAR,
	"txn_host" VARCHAR,
	"txn_agent_info" VARCHAR,
	"txn_meta_info" VARCHAR,
	"txn_heartbeat_count" INTEGER,
	 PRIMARY KEY ("txn_id")
);
