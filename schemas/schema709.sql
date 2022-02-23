DROP DATABASE IF EXISTS "schema709";
CREATE DATABASE "schema709";
USE "schema709";
CREATE TABLE "qrtz_locks" (
	"sched_name" VARCHAR,
	"lock_name" VARCHAR,
	 PRIMARY KEY ("sched_name","lock_name")
);

CREATE TABLE "qrtz_scheduler_state" (
	"sched_name" VARCHAR,
	"instance_name" VARCHAR,
	"last_checkin_time" BIGINT,
	"checkin_interval" BIGINT,
	 PRIMARY KEY ("sched_name","instance_name")
);

CREATE TABLE "qrtz_fired_triggers" (
	"sched_name" VARCHAR,
	"entry_id" VARCHAR,
	"trigger_name" VARCHAR,
	"trigger_group" VARCHAR,
	"instance_name" VARCHAR,
	"fired_time" BIGINT,
	"sched_time" BIGINT,
	"priority" INTEGER,
	"state" VARCHAR,
	"job_name" VARCHAR,
	"job_group" VARCHAR,
	"is_nonconcurrent" BOOLEAN,
	"requests_recovery" BOOLEAN,
	 PRIMARY KEY ("sched_name","entry_id")
);

CREATE TABLE "qrtz_paused_trigger_grps" (
	"sched_name" VARCHAR,
	"trigger_group" VARCHAR,
	 PRIMARY KEY ("sched_name","trigger_group")
);

CREATE TABLE "qrtz_calendars" (
	"sched_name" VARCHAR,
	"calendar_name" VARCHAR,
	"calendar" BLOB,
	 PRIMARY KEY ("sched_name","calendar_name")
);

CREATE TABLE "qrtz_job_details" (
	"sched_name" VARCHAR,
	"job_name" VARCHAR,
	"job_group" VARCHAR,
	"description" VARCHAR,
	"job_class_name" VARCHAR,
	"is_durable" BOOLEAN,
	"is_nonconcurrent" BOOLEAN,
	"is_update_data" BOOLEAN,
	"requests_recovery" BOOLEAN,
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
	"priority" INTEGER,
	"trigger_state" VARCHAR,
	"trigger_type" VARCHAR,
	"start_time" BIGINT,
	"end_time" BIGINT,
	"calendar_name" VARCHAR,
	"misfire_instr" SMALLINT,
	"job_data" BLOB,
	 PRIMARY KEY ("sched_name","trigger_name","trigger_group"),
	 CONSTRAINT "fkeycon_qrtz_triggers_to_qrtz_job_details" FOREIGN KEY ("sched_name","job_name","job_group") REFERENCES "qrtz_job_details" ("sched_name","job_name","job_group")
);

CREATE TABLE "qrtz_blob_triggers" (
	"sched_name" VARCHAR,
	"trigger_name" VARCHAR,
	"trigger_group" VARCHAR,
	"blob_data" BLOB,
	 PRIMARY KEY ("sched_name","trigger_name","trigger_group"),
	 CONSTRAINT "fkeycon_qrtz_blob_triggers_to_qrtz_triggers" FOREIGN KEY ("sched_name","trigger_name","trigger_group") REFERENCES "qrtz_triggers" ("sched_name","trigger_name","trigger_group")
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
	"dec_prop_1" NUMERIC,
	"dec_prop_2" NUMERIC,
	"bool_prop_1" BOOLEAN,
	"bool_prop_2" BOOLEAN,
	"time_zone_id" VARCHAR,
	 PRIMARY KEY ("sched_name","trigger_name","trigger_group"),
	 CONSTRAINT "fkeycon_qrtz_simprop_triggers_to_qrtz_triggers" FOREIGN KEY ("sched_name","trigger_name","trigger_group") REFERENCES "qrtz_triggers" ("sched_name","trigger_name","trigger_group")
);

CREATE TABLE "qrtz_cron_triggers" (
	"sched_name" VARCHAR,
	"trigger_name" VARCHAR,
	"trigger_group" VARCHAR,
	"cron_expression" VARCHAR,
	"time_zone_id" VARCHAR,
	 PRIMARY KEY ("sched_name","trigger_name","trigger_group"),
	 CONSTRAINT "fkeycon_qrtz_cron_triggers_to_qrtz_triggers" FOREIGN KEY ("sched_name","trigger_name","trigger_group") REFERENCES "qrtz_triggers" ("sched_name","trigger_name","trigger_group")
);

CREATE TABLE "qrtz_simple_triggers" (
	"sched_name" VARCHAR,
	"trigger_name" VARCHAR,
	"trigger_group" VARCHAR,
	"repeat_count" BIGINT,
	"repeat_interval" BIGINT,
	"times_triggered" BIGINT,
	 PRIMARY KEY ("sched_name","trigger_name","trigger_group"),
	 CONSTRAINT "fkeycon_qrtz_simple_triggers_to_qrtz_triggers" FOREIGN KEY ("sched_name","trigger_name","trigger_group") REFERENCES "qrtz_triggers" ("sched_name","trigger_name","trigger_group")
);
