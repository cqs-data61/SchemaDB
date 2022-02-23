DROP DATABASE IF EXISTS "schema671";
CREATE DATABASE "schema671";
USE "schema671";
CREATE TABLE "snapshots" (
	"id" INTEGER,
	"uuid" VARCHAR,
	"created_at" BIGINT,
	"build_date" BIGINT,
	"component_uuid" VARCHAR,
	"status" VARCHAR,
	"islast" BOOLEAN
);

CREATE TABLE "events" (
	"id" INTEGER,
	"name" VARCHAR,
	"analysis_uuid" VARCHAR,
	"component_uuid" VARCHAR,
	"category" VARCHAR,
	"created_at" BIGINT,
	"description" VARCHAR,
	"event_data" VARCHAR
);

CREATE TABLE "projects" (
	"id" INTEGER,
	"kee" VARCHAR,
	"uuid" VARCHAR,
	"root_uuid" VARCHAR,
	"project_uuid" VARCHAR,
	"module_uuid" VARCHAR,
	"module_uuid_path" VARCHAR,
	"main_branch_project_uuid" VARCHAR,
	"name" VARCHAR,
	"tags" VARCHAR,
	"enabled" BOOLEAN,
	"scope" VARCHAR,
	"qualifier" VARCHAR
);

CREATE TABLE "properties" (
	"id" INTEGER,
	"prop_key" VARCHAR,
	"resource_id" INTEGER,
	"user_id" INTEGER,
	"is_empty" BOOLEAN,
	"text_value" VARCHAR,
	"clob_value" CLOB,
	"created_at" BIGINT
);

CREATE TABLE "new_code_periods" (
	"uuid" VARCHAR,
	"project_uuid" VARCHAR,
	"branch_uuid" VARCHAR,
	"type" VARCHAR,
	"value" VARCHAR,
	"updated_at" BIGINT,
	"created_at" BIGINT,
	 PRIMARY KEY ("uuid")
);

CREATE TABLE "project_branches" (
	"uuid" VARCHAR,
	"project_uuid" VARCHAR,
	"kee" VARCHAR,
	"key_type" VARCHAR,
	"branch_type" VARCHAR,
	"merge_branch_uuid" VARCHAR,
	"pull_request_binary" BLOB,
	"manual_baseline_analysis_uuid" VARCHAR,
	"created_at" BIGINT,
	"updated_at" BIGINT,
	 PRIMARY KEY ("uuid")
);
