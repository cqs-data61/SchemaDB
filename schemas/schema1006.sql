DROP DATABASE IF EXISTS "schema1006";
CREATE DATABASE "schema1006";
USE "schema1006";
CREATE TABLE "transaction" (
	"application" VARCHAR,
	"run_time" CHAR,
	"txn_id" VARCHAR,
	"txn_type" VARCHAR,
	"txn_minimum" DECIMAL,
	"txn_average" DECIMAL,
	"txn_maximum" DECIMAL,
	"txn_std_deviation" DECIMAL,
	"txn_90th" DECIMAL,
	"txn_95th" DECIMAL,
	"txn_99th" DECIMAL,
	"txn_pass" BIGINT,
	"txn_fail" BIGINT,
	"txn_stop" BIGINT,
	"txn_first" DECIMAL,
	"txn_last" DECIMAL,
	"txn_sum" DECIMAL,
	 PRIMARY KEY ("application","run_time","txn_id","txn_type")
);

CREATE TABLE "testtransactions" (
	"application" VARCHAR,
	"run_time" CHAR,
	"txn_id" VARCHAR,
	"txn_type" VARCHAR,
	"txn_result" DECIMAL,
	"txn_passed" VARCHAR,
	"txn_epoch_time" VARCHAR
);

CREATE TABLE "sla" (
	"txn_id" VARCHAR,
	"application" VARCHAR,
	"is_txn_ignored" VARCHAR,
	"sla_90th_response" DECIMAL,
	"sla_95th_response" DECIMAL,
	"sla_99th_response" DECIMAL,
	"sla_pass_count" BIGINT,
	"sla_pass_count_variance_percent" DECIMAL,
	"sla_fail_count" BIGINT,
	"sla_fail_percent" DECIMAL,
	"xtra_num" DECIMAL,
	"sla_ref_url" VARCHAR,
	"comment" VARCHAR,
	 PRIMARY KEY ("txn_id","application")
);

CREATE TABLE "runs" (
	"application" VARCHAR,
	"run_time" CHAR,
	"is_run_ignored" VARCHAR,
	"run_reference" VARCHAR,
	"period" VARCHAR,
	"duration" VARCHAR,
	"baseline_run" CHAR,
	"comment" VARCHAR,
	 PRIMARY KEY ("application","run_time")
);

CREATE TABLE "metricsla" (
	"application" VARCHAR,
	"metric_name" VARCHAR,
	"metric_txn_type" VARCHAR,
	"value_derivation" VARCHAR,
	"sla_min" DECIMAL,
	"sla_max" DECIMAL,
	"is_active" CHAR,
	"comment" VARCHAR,
	 PRIMARY KEY ("application","metric_name","metric_txn_type","value_derivation")
);

CREATE TABLE "graphmapping" (
	"listorder" INT,
	"graph" VARCHAR,
	"txn_type" VARCHAR,
	"value_derivation" VARCHAR,
	"uom_description" VARCHAR,
	"bar_range_sql" VARCHAR,
	"bar_range_legend" VARCHAR,
	"comment" VARCHAR,
	 PRIMARY KEY ("graph")
);

CREATE TABLE "eventmapping" (
	"txn_type" VARCHAR,
	"metric_source" VARCHAR,
	"match_when_like" VARCHAR,
	"target_name_lb" VARCHAR,
	"target_name_rb" VARCHAR,
	"is_percentage" VARCHAR,
	"is_inverted_percentage" VARCHAR,
	"performance_tool" VARCHAR,
	"comment" VARCHAR,
	 PRIMARY KEY ("metric_source","match_when_like","performance_tool")
);

CREATE TABLE "applications" (
	"application" VARCHAR,
	"active" CHAR,
	"comment" VARCHAR,
	 PRIMARY KEY ("application")
);
