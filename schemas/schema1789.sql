DROP DATABASE IF EXISTS "schema1789";
CREATE DATABASE "schema1789";
USE "schema1789";
CREATE TABLE "utask_sql_migrations" (
	"current_migration_applied" TEXT,
	 PRIMARY KEY ("current_migration_applied")
);

CREATE TABLE "runner_instance" (
	"id" BIGSERIAL,
	"heartbeat" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "resolution" (
	"id" BIGSERIAL,
	"public_id" VARCHAR,
	"id_task" BIGINT,
	"resolver_username" TEXT,
	"state" TEXT,
	"instance_id" BIGINT,
	"created" DATETIME,
	"last_start" DATETIME,
	"last_stop" DATETIME,
	"next_retry" DATETIME,
	"run_count" INTEGER,
	"run_max" INTEGER,
	"crypt_key" BYTEA,
	"encrypted_resolver_input" BYTEA,
	"encrypted_steps" BYTEA,
	"base_configurations" LONGTEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "task_comment" (
	"id" BIGSERIAL,
	"public_id" VARCHAR,
	"id_task" BIGINT,
	"username" TEXT,
	"created" DATETIME,
	"updated" DATETIME,
	"content" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "task" (
	"id" BIGSERIAL,
	"public_id" VARCHAR,
	"id_template" BIGINT,
	"id_batch" BIGINT,
	"title" TEXT,
	"requester_username" TEXT,
	"watcher_usernames" LONGTEXT,
	"resolver_usernames" LONGTEXT,
	"created" DATETIME,
	"last_activity" DATETIME,
	"state" TEXT,
	"steps_done" INTEGER,
	"steps_total" INTEGER,
	"crypt_key" BYTEA,
	"encrypted_input" BYTEA,
	"encrypted_result" BYTEA,
	"tags" LONGTEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "batch" (
	"id" BIGSERIAL,
	"public_id" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "task_template" (
	"id" BIGSERIAL,
	"name" TEXT,
	"description" TEXT,
	"long_description" TEXT,
	"doc_link" TEXT,
	"inputs" LONGTEXT,
	"resolver_inputs" LONGTEXT,
	"steps" LONGTEXT,
	"variables" LONGTEXT,
	"allowed_resolver_usernames" LONGTEXT,
	"allow_all_resolver_usernames" BOOL,
	"auto_runnable" BOOL,
	"blocked" BOOL,
	"hidden" BOOL,
	"result_format" LONGTEXT,
	"title_format" TEXT,
	"retry_max" INTEGER,
	"base_configurations" LONGTEXT,
	"tags" LONGTEXT,
	 PRIMARY KEY ("id")
);
