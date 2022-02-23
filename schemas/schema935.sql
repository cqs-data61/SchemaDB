DROP DATABASE IF EXISTS "schema935";
CREATE DATABASE "schema935";
USE "schema935";
CREATE TABLE "user" (
	"id" INT,
	"email" VARCHAR,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "people" (
	"person_id" BIGINT,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	 PRIMARY KEY ("person_id")
);

CREATE TABLE "hibernate_sequence" (
	"next_val" BIGINT
);

CREATE TABLE "batch_step_execution_seq" (
	"id" BIGINT,
	"unique_key" CHAR
);

CREATE TABLE "batch_job_seq" (
	"id" BIGINT,
	"unique_key" CHAR
);

CREATE TABLE "batch_job_instance" (
	"job_instance_id" BIGINT,
	"version" BIGINT,
	"job_name" VARCHAR,
	"job_key" VARCHAR,
	 PRIMARY KEY ("job_instance_id")
);

CREATE TABLE "batch_job_execution_seq" (
	"id" BIGINT,
	"unique_key" CHAR
);

CREATE TABLE "batch_job_execution" (
	"job_execution_id" BIGINT,
	"version" BIGINT,
	"job_instance_id" BIGINT,
	"create_time" DATETIME,
	"start_time" DATETIME,
	"end_time" DATETIME,
	"status" VARCHAR,
	"exit_code" VARCHAR,
	"exit_message" VARCHAR,
	"last_updated" DATETIME,
	"job_configuration_location" VARCHAR,
	 PRIMARY KEY ("job_execution_id")
);

CREATE TABLE "batch_step_execution" (
	"step_execution_id" BIGINT,
	"version" BIGINT,
	"step_name" VARCHAR,
	"job_execution_id" BIGINT,
	"start_time" DATETIME,
	"end_time" DATETIME,
	"status" VARCHAR,
	"commit_count" BIGINT,
	"read_count" BIGINT,
	"filter_count" BIGINT,
	"write_count" BIGINT,
	"read_skip_count" BIGINT,
	"write_skip_count" BIGINT,
	"process_skip_count" BIGINT,
	"rollback_count" BIGINT,
	"exit_code" VARCHAR,
	"exit_message" VARCHAR,
	"last_updated" DATETIME,
	 PRIMARY KEY ("step_execution_id"),
	 CONSTRAINT "JOB_EXEC_STEP_FK" FOREIGN KEY ("job_execution_id") REFERENCES "batch_job_execution" ("job_execution_id")
);

CREATE TABLE "batch_step_execution_context" (
	"step_execution_id" BIGINT,
	"short_context" VARCHAR,
	"serialized_context" TEXT,
	 PRIMARY KEY ("step_execution_id"),
	 CONSTRAINT "STEP_EXEC_CTX_FK" FOREIGN KEY ("step_execution_id") REFERENCES "batch_step_execution" ("step_execution_id")
);

CREATE TABLE "batch_job_execution_params" (
	"job_execution_id" BIGINT,
	"type_cd" VARCHAR,
	"key_name" VARCHAR,
	"string_val" VARCHAR,
	"date_val" DATETIME,
	"long_val" BIGINT,
	"double_val" DOUBLE,
	"identifying" CHAR,
	 CONSTRAINT "JOB_EXEC_PARAMS_FK" FOREIGN KEY ("job_execution_id") REFERENCES "batch_job_execution" ("job_execution_id")
);

CREATE TABLE "batch_job_execution_context" (
	"job_execution_id" BIGINT,
	"short_context" VARCHAR,
	"serialized_context" TEXT,
	 PRIMARY KEY ("job_execution_id"),
	 CONSTRAINT "JOB_EXEC_CTX_FK" FOREIGN KEY ("job_execution_id") REFERENCES "batch_job_execution" ("job_execution_id")
);
