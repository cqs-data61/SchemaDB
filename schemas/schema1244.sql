DROP DATABASE IF EXISTS "schema1244";
CREATE DATABASE "schema1244";
USE "schema1244";
CREATE TABLE "batch_job_instance" (
	"job_instance_id" BIGINT,
	"version" BIGINT,
	"job_name" VARCHAR,
	"job_key" VARCHAR,
	 PRIMARY KEY ("job_instance_id")
);

CREATE TABLE "batch_job_execution" (
	"job_execution_id" BIGINT,
	"version" BIGINT,
	"job_instance_id" BIGINT,
	"create_time" TIMESTAMP,
	"start_time" TIMESTAMP,
	"end_time" TIMESTAMP,
	"status" VARCHAR,
	"exit_code" VARCHAR,
	"exit_message" VARCHAR,
	"last_updated" TIMESTAMP,
	"job_configuration_location" VARCHAR,
	 PRIMARY KEY ("job_execution_id"),
	 CONSTRAINT "job_inst_exec_fk" FOREIGN KEY ("job_instance_id") REFERENCES "batch_job_instance" ("job_instance_id")
);

CREATE TABLE "batch_job_execution_context" (
	"job_execution_id" BIGINT,
	"short_context" VARCHAR,
	"serialized_context" TEXT,
	 PRIMARY KEY ("job_execution_id"),
	 CONSTRAINT "job_exec_ctx_fk" FOREIGN KEY ("job_execution_id") REFERENCES "batch_job_execution" ("job_execution_id")
);

CREATE TABLE "batch_step_execution" (
	"step_execution_id" BIGINT,
	"version" BIGINT,
	"step_name" VARCHAR,
	"job_execution_id" BIGINT,
	"start_time" TIMESTAMP,
	"end_time" TIMESTAMP,
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
	"last_updated" TIMESTAMP,
	 PRIMARY KEY ("step_execution_id"),
	 CONSTRAINT "job_exec_step_fk" FOREIGN KEY ("job_execution_id") REFERENCES "batch_job_execution" ("job_execution_id")
);

CREATE TABLE "batch_step_execution_context" (
	"step_execution_id" BIGINT,
	"short_context" VARCHAR,
	"serialized_context" TEXT,
	 PRIMARY KEY ("step_execution_id"),
	 CONSTRAINT "step_exec_ctx_fk" FOREIGN KEY ("step_execution_id") REFERENCES "batch_step_execution" ("step_execution_id")
);

CREATE TABLE "batch_job_execution_params" (
	"job_execution_id" BIGINT,
	"type_cd" VARCHAR,
	"key_name" VARCHAR,
	"string_val" VARCHAR,
	"date_val" TIMESTAMP,
	"long_val" BIGINT,
	"double_val" DOUBLE PRECISION,
	"identifying" CHAR,
	 CONSTRAINT "job_exec_params_fk" FOREIGN KEY ("job_execution_id") REFERENCES "batch_job_execution" ("job_execution_id")
);
