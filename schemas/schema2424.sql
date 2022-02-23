DROP DATABASE IF EXISTS "schema2424";
CREATE DATABASE "schema2424";
USE "schema2424";
CREATE TABLE "wmq_client" (
	"id" BIGINT,
	"consumer_no" VARCHAR,
	"ip" VARCHAR,
	"name" VARCHAR,
	"description" VARCHAR,
	"tags" VARCHAR,
	"version" INT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "wmq_owner" (
	"id" BIGINT,
	"name" VARCHAR,
	"mobile" VARCHAR,
	"email" VARCHAR,
	"im" VARCHAR,
	"description" VARCHAR,
	"tags" VARCHAR,
	"version" INT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "wmq_task_log" (
	"id" BIGINT,
	"log_type" TINYINT,
	"task_no" VARCHAR,
	"task_id" BIGINT,
	"name" VARCHAR,
	"description" VARCHAR,
	"tags" VARCHAR,
	"version" INT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "wmq_task_dag" (
	"id" BIGINT,
	"name" VARCHAR,
	"description" VARCHAR,
	"tags" VARCHAR,
	"version" INT,
	"owner_id" BIGINT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "wmq_task" (
	"id" BIGINT,
	"name" VARCHAR,
	"producer" VARCHAR,
	"task_no" VARCHAR,
	"topic_id" BIGINT,
	"shard" INT,
	"state" TINYINT,
	"executor" VARCHAR,
	"executor_params" VARCHAR,
	"execute_mode" TINYINT,
	"max_retry_times" INT,
	"executed_times" INT,
	"max_execute_time" INT,
	"trigger_at" DATETIME,
	"first_trigger_at" DATETIME,
	"expired_at" DATETIME,
	"locker" VARCHAR,
	"lock_at" DATETIME,
	"attachment" VARCHAR,
	"tags" VARCHAR,
	"version" INT,
	"owner_id" BIGINT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "wmq_message" (
	"id" BIGINT,
	"message_no" VARCHAR,
	"topic_id" BIGINT,
	"shard" INT,
	"state" TINYINT,
	"producer" VARCHAR,
	"message" VARCHAR,
	"expired_at" DATETIME,
	"locker" VARCHAR,
	"lock_at" DATETIME,
	"attachment" VARCHAR,
	"tags" VARCHAR,
	"version" INT,
	"owner_id" BIGINT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "wmq_topic" (
	"id" BIGINT,
	"topic_no" VARCHAR,
	"topic_type" TINYINT,
	"trigger_type" TINYINT,
	"trigger" VARCHAR,
	"trigger_timeout" INT,
	"execute_mode" TINYINT,
	"max_retry_times" INT,
	"max_execute_time" INT,
	"concurrency" VARCHAR,
	"sharding" VARCHAR,
	"name" VARCHAR,
	"tags" VARCHAR,
	"description" VARCHAR,
	"version" INT,
	"owner_id" BIGINT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("id")
);
