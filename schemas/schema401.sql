DROP DATABASE IF EXISTS "schema401";
CREATE DATABASE "schema401";
USE "schema401";
CREATE TABLE "undo_log" (
	"id" BIGINT,
	"branch_id" BIGINT,
	"xid" VARCHAR,
	"context" VARCHAR,
	"rollback_info" LONGBLOB,
	"log_status" INT,
	"log_created" DATETIME,
	"log_modified" DATETIME,
	"ext" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "tb_user" (
	"user_id" BIGINT,
	"username" VARCHAR,
	"mobile" VARCHAR,
	"password" VARCHAR,
	"create_time" DATETIME,
	 PRIMARY KEY ("user_id")
);

CREATE TABLE "sys_user_token" (
	"user_id" BIGINT,
	"token" VARCHAR,
	"expire_time" DATETIME,
	"update_time" DATETIME,
	 PRIMARY KEY ("user_id")
);

CREATE TABLE "sys_user_role" (
	"id" BIGINT,
	"user_id" BIGINT,
	"role_id" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sys_user" (
	"user_id" BIGINT,
	"username" VARCHAR,
	"password" VARCHAR,
	"salt" VARCHAR,
	"email" VARCHAR,
	"mobile" VARCHAR,
	"status" TINYINT,
	"create_user_id" BIGINT,
	"create_time" DATETIME,
	 PRIMARY KEY ("user_id")
);

CREATE TABLE "sys_role_menu" (
	"id" BIGINT,
	"role_id" BIGINT,
	"menu_id" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sys_role" (
	"role_id" BIGINT,
	"role_name" VARCHAR,
	"remark" VARCHAR,
	"create_user_id" BIGINT,
	"create_time" DATETIME,
	 PRIMARY KEY ("role_id")
);

CREATE TABLE "sys_oss" (
	"id" BIGINT,
	"url" VARCHAR,
	"create_date" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sys_menu" (
	"menu_id" BIGINT,
	"parent_id" BIGINT,
	"name" VARCHAR,
	"url" VARCHAR,
	"perms" VARCHAR,
	"type" INT,
	"icon" VARCHAR,
	"order_num" INT,
	 PRIMARY KEY ("menu_id")
);

CREATE TABLE "sys_log" (
	"id" BIGINT,
	"username" VARCHAR,
	"operation" VARCHAR,
	"method" VARCHAR,
	"params" VARCHAR,
	"time" BIGINT,
	"ip" VARCHAR,
	"create_date" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sys_config" (
	"id" BIGINT,
	"param_key" VARCHAR,
	"param_value" VARCHAR,
	"status" TINYINT,
	"remark" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sys_captcha" (
	"uuid" CHAR,
	"code" VARCHAR,
	"expire_time" DATETIME,
	 PRIMARY KEY ("uuid")
);

CREATE TABLE "schedule_job_log" (
	"log_id" BIGINT,
	"job_id" BIGINT,
	"bean_name" VARCHAR,
	"params" VARCHAR,
	"status" TINYINT,
	"error" VARCHAR,
	"times" INT,
	"create_time" DATETIME,
	 PRIMARY KEY ("log_id")
);

CREATE TABLE "schedule_job" (
	"job_id" BIGINT,
	"bean_name" VARCHAR,
	"params" VARCHAR,
	"cron_expression" VARCHAR,
	"status" TINYINT,
	"remark" VARCHAR,
	"create_time" DATETIME,
	 PRIMARY KEY ("job_id")
);

CREATE TABLE "qrtz_simprop_triggers" (
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
	 PRIMARY KEY ("sched_name","trigger_name","trigger_group")
);

CREATE TABLE "qrtz_simple_triggers" (
	"sched_name" VARCHAR,
	"trigger_name" VARCHAR,
	"trigger_group" VARCHAR,
	"repeat_count" BIGINT,
	"repeat_interval" BIGINT,
	"times_triggered" BIGINT,
	 PRIMARY KEY ("sched_name","trigger_name","trigger_group")
);

CREATE TABLE "qrtz_scheduler_state" (
	"sched_name" VARCHAR,
	"instance_name" VARCHAR,
	"last_checkin_time" BIGINT,
	"checkin_interval" BIGINT,
	 PRIMARY KEY ("sched_name","instance_name")
);

CREATE TABLE "qrtz_paused_trigger_grps" (
	"sched_name" VARCHAR,
	"trigger_group" VARCHAR,
	 PRIMARY KEY ("sched_name","trigger_group")
);

CREATE TABLE "qrtz_locks" (
	"sched_name" VARCHAR,
	"lock_name" VARCHAR,
	 PRIMARY KEY ("sched_name","lock_name")
);

CREATE TABLE "qrtz_job_details" (
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

CREATE TABLE "qrtz_triggers" (
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
	 CONSTRAINT "qrtz_triggers_ibfk_1" FOREIGN KEY ("sched_name","job_name","job_group") REFERENCES "qrtz_job_details" ("sched_name","job_name","job_group")
);

CREATE TABLE "qrtz_fired_triggers" (
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

CREATE TABLE "qrtz_cron_triggers" (
	"sched_name" VARCHAR,
	"trigger_name" VARCHAR,
	"trigger_group" VARCHAR,
	"cron_expression" VARCHAR,
	"time_zone_id" VARCHAR,
	 PRIMARY KEY ("sched_name","trigger_name","trigger_group")
);

CREATE TABLE "qrtz_calendars" (
	"sched_name" VARCHAR,
	"calendar_name" VARCHAR,
	"calendar" BLOB,
	 PRIMARY KEY ("sched_name","calendar_name")
);

CREATE TABLE "qrtz_blob_triggers" (
	"sched_name" VARCHAR,
	"trigger_name" VARCHAR,
	"trigger_group" VARCHAR,
	"blob_data" BLOB,
	 PRIMARY KEY ("sched_name","trigger_name","trigger_group")
);
