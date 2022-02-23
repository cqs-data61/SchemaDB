DROP DATABASE IF EXISTS "schema704";
CREATE DATABASE "schema704";
USE "schema704";
CREATE TABLE "xxl_job_qrtz_trigger_registry" (
	"id" INT,
	"registry_group" VARCHAR,
	"registry_key" VARCHAR,
	"registry_value" VARCHAR,
	"update_time" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "xxl_job_qrtz_trigger_logglue" (
	"id" INT,
	"job_id" INT,
	"glue_type" VARCHAR,
	"glue_source" MEDIUMTEXT,
	"glue_remark" VARCHAR,
	"add_time" TIMESTAMP,
	"update_time" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "xxl_job_qrtz_trigger_log" (
	"id" INT,
	"job_group" INT,
	"job_id" INT,
	"executor_address" VARCHAR,
	"executor_handler" VARCHAR,
	"executor_param" VARCHAR,
	"executor_sharding_param" VARCHAR,
	"executor_fail_retry_count" INT,
	"trigger_time" DATETIME,
	"trigger_code" INT,
	"trigger_msg" TEXT,
	"handle_time" DATETIME,
	"handle_code" INT,
	"handle_msg" TEXT,
	"alarm_status" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "xxl_job_qrtz_trigger_info" (
	"id" INT,
	"job_group" INT,
	"job_cron" VARCHAR,
	"job_desc" VARCHAR,
	"add_time" DATETIME,
	"update_time" DATETIME,
	"author" VARCHAR,
	"alarm_email" VARCHAR,
	"executor_route_strategy" VARCHAR,
	"executor_handler" VARCHAR,
	"executor_param" VARCHAR,
	"executor_block_strategy" VARCHAR,
	"executor_timeout" INT,
	"executor_fail_retry_count" INT,
	"glue_type" VARCHAR,
	"glue_source" MEDIUMTEXT,
	"glue_remark" VARCHAR,
	"glue_updatetime" DATETIME,
	"child_jobid" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "xxl_job_qrtz_trigger_group" (
	"id" INT,
	"app_name" VARCHAR,
	"title" VARCHAR,
	"order" TINYINT,
	"address_type" TINYINT,
	"address_list" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "xxl_job_qrtz_scheduler_state" (
	"sched_name" VARCHAR,
	"instance_name" VARCHAR,
	"last_checkin_time" BIGINT,
	"checkin_interval" BIGINT,
	 PRIMARY KEY ("sched_name","instance_name")
);

CREATE TABLE "xxl_job_qrtz_paused_trigger_grps" (
	"sched_name" VARCHAR,
	"trigger_group" VARCHAR,
	 PRIMARY KEY ("sched_name","trigger_group")
);

CREATE TABLE "xxl_job_qrtz_locks" (
	"sched_name" VARCHAR,
	"lock_name" VARCHAR,
	 PRIMARY KEY ("sched_name","lock_name")
);

CREATE TABLE "xxl_job_qrtz_fired_triggers" (
	"sched_name" VARCHAR,
	"entry_id" VARCHAR,
	"trigger_name" VARCHAR,
	"trigger_group" VARCHAR,
	"instance_name" VARCHAR,
	"fired_time" BIGINT,
	"sched_time" BIGINT,
	"priority" INT,
	"state" VARCHAR,
	"job_name" VARCHAR,
	"job_group" VARCHAR,
	"is_nonconcurrent" VARCHAR,
	"requests_recovery" VARCHAR,
	 PRIMARY KEY ("sched_name","entry_id")
);

CREATE TABLE "xxl_job_qrtz_calendars" (
	"sched_name" VARCHAR,
	"calendar_name" VARCHAR,
	"calendar" BLOB,
	 PRIMARY KEY ("sched_name","calendar_name")
);

CREATE TABLE "xxl_job_qrtz_job_details" (
	"sched_name" VARCHAR,
	"job_name" VARCHAR,
	"job_group" VARCHAR,
	"description" VARCHAR,
	"job_class_name" VARCHAR,
	"is_durable" VARCHAR,
	"is_nonconcurrent" VARCHAR,
	"is_update_data" VARCHAR,
	"requests_recovery" VARCHAR,
	"job_data" BLOB,
	 PRIMARY KEY ("sched_name","job_name","job_group")
);

CREATE TABLE "xxl_job_qrtz_triggers" (
	"sched_name" VARCHAR,
	"trigger_name" VARCHAR,
	"trigger_group" VARCHAR,
	"job_name" VARCHAR,
	"job_group" VARCHAR,
	"description" VARCHAR,
	"next_fire_time" BIGINT,
	"prev_fire_time" BIGINT,
	"priority" INT,
	"trigger_state" VARCHAR,
	"trigger_type" VARCHAR,
	"start_time" BIGINT,
	"end_time" BIGINT,
	"calendar_name" VARCHAR,
	"misfire_instr" SMALLINT,
	"job_data" BLOB,
	 PRIMARY KEY ("sched_name","trigger_name","trigger_group"),
	 CONSTRAINT "XXL_JOB_QRTZ_TRIGGERS_ibfk_1" FOREIGN KEY ("sched_name","job_name","job_group") REFERENCES "xxl_job_qrtz_job_details" ("sched_name","job_name","job_group")
);

CREATE TABLE "xxl_job_qrtz_simprop_triggers" (
	"sched_name" VARCHAR,
	"trigger_name" VARCHAR,
	"trigger_group" VARCHAR,
	"str_prop_1" VARCHAR,
	"str_prop_2" VARCHAR,
	"str_prop_3" VARCHAR,
	"int_prop_1" INT,
	"int_prop_2" INT,
	"long_prop_1" BIGINT,
	"long_prop_2" BIGINT,
	"dec_prop_1" DECIMAL,
	"dec_prop_2" DECIMAL,
	"bool_prop_1" VARCHAR,
	"bool_prop_2" VARCHAR,
	 PRIMARY KEY ("sched_name","trigger_name","trigger_group"),
	 CONSTRAINT "XXL_JOB_QRTZ_SIMPROP_TRIGGERS_ibfk_1" FOREIGN KEY ("sched_name","trigger_name","trigger_group") REFERENCES "xxl_job_qrtz_triggers" ("sched_name","trigger_name","trigger_group")
);

CREATE TABLE "xxl_job_qrtz_simple_triggers" (
	"sched_name" VARCHAR,
	"trigger_name" VARCHAR,
	"trigger_group" VARCHAR,
	"repeat_count" BIGINT,
	"repeat_interval" BIGINT,
	"times_triggered" BIGINT,
	 PRIMARY KEY ("sched_name","trigger_name","trigger_group"),
	 CONSTRAINT "XXL_JOB_QRTZ_SIMPLE_TRIGGERS_ibfk_1" FOREIGN KEY ("sched_name","trigger_name","trigger_group") REFERENCES "xxl_job_qrtz_triggers" ("sched_name","trigger_name","trigger_group")
);

CREATE TABLE "xxl_job_qrtz_cron_triggers" (
	"sched_name" VARCHAR,
	"trigger_name" VARCHAR,
	"trigger_group" VARCHAR,
	"cron_expression" VARCHAR,
	"time_zone_id" VARCHAR,
	 PRIMARY KEY ("sched_name","trigger_name","trigger_group"),
	 CONSTRAINT "XXL_JOB_QRTZ_CRON_TRIGGERS_ibfk_1" FOREIGN KEY ("sched_name","trigger_name","trigger_group") REFERENCES "xxl_job_qrtz_triggers" ("sched_name","trigger_name","trigger_group")
);

CREATE TABLE "xxl_job_qrtz_blob_triggers" (
	"sched_name" VARCHAR,
	"trigger_name" VARCHAR,
	"trigger_group" VARCHAR,
	"blob_data" BLOB,
	 PRIMARY KEY ("sched_name","trigger_name","trigger_group"),
	 CONSTRAINT "XXL_JOB_QRTZ_BLOB_TRIGGERS_ibfk_1" FOREIGN KEY ("sched_name","trigger_name","trigger_group") REFERENCES "xxl_job_qrtz_triggers" ("sched_name","trigger_name","trigger_group")
);
