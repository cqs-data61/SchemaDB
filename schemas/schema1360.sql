DROP DATABASE IF EXISTS "schema1360";
CREATE DATABASE "schema1360";
USE "schema1360";
CREATE TABLE "bistoury_profiler" (
	"id" INT,
	"profiler_id" VARCHAR,
	"operator" VARCHAR,
	"app_code" VARCHAR,
	"agent_id" VARCHAR,
	"duration" INT,
	"interval_ms" INT,
	"mode" INT,
	"pid" INT,
	"start_time" TIMESTAMP,
	"update_time" TIMESTAMP,
	"state" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "bistoury_profiler_lock" (
	"id" INT,
	"app_code" VARCHAR,
	"agent_id" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "bistoury_user" (
	"id" INT,
	"user_code" VARCHAR,
	"password" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "bistoury_gitlab_token" (
	"id" INT,
	"user_code" VARCHAR,
	"private_token" VARCHAR,
	"create_time" TIMESTAMP,
	"update_time" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "bistoury_server" (
	"id" BIGINT,
	"server_id" VARCHAR,
	"ip" VARCHAR,
	"port" INT,
	"host" VARCHAR,
	"log_dir" VARCHAR,
	"room" VARCHAR,
	"app_code" VARCHAR,
	"auto_jstack_enable" TINYINT,
	"auto_jmap_histo_enable" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "bistoury_user_app" (
	"id" INT,
	"app_code" VARCHAR,
	"user_code" VARCHAR,
	"create_time" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "bistoury_app" (
	"id" INT,
	"code" VARCHAR,
	"name" VARCHAR,
	"group_code" VARCHAR,
	"status" TINYINT,
	"creator" VARCHAR,
	"create_time" TIMESTAMP,
	 PRIMARY KEY ("id")
);
