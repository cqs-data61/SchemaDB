DROP DATABASE IF EXISTS "schema377";
CREATE DATABASE "schema377";
USE "schema377";
CREATE TABLE "tb_tag_model" (
	"id" BIGINT,
	"tag_id" BIGINT,
	"model_type" INTEGER,
	"model_name" VARCHAR,
	"model_main" VARCHAR,
	"model_path" VARCHAR,
	"model_jar" VARCHAR,
	"model_args" VARCHAR,
	"spark_opts" VARCHAR,
	"schedule_rule" VARCHAR,
	"operator" VARCHAR,
	"operation" VARCHAR,
	"create_time" DATETIME,
	"update_time" TIMESTAMP,
	"state" INTEGER
);

CREATE TABLE "tb_tag_metadata" (
	"id" BIGINT,
	"tag_id" BIGINT,
	"in_type" INTEGER,
	"driver" VARCHAR,
	"url" VARCHAR,
	"user" VARCHAR,
	"password" VARCHAR,
	"db_table" VARCHAR,
	"query_sql" VARCHAR,
	"in_path" VARCHAR,
	"sperator" VARCHAR,
	"out_path" VARCHAR,
	"zk_hosts" VARCHAR,
	"hbase_table" VARCHAR,
	"family" VARCHAR,
	"select_field_names" VARCHAR,
	"where_field_names" VARCHAR,
	"where_field_values" VARCHAR,
	"out_fields" VARCHAR,
	"create_time" DATETIME,
	"update_time" TIMESTAMP,
	"state" INTEGER,
	"remark" VARCHAR
);

CREATE TABLE "tb_merge_tag_detail" (
	"id" BIGINT,
	"merge_tag_id" BIGINT,
	"basic_tag_id" BIGINT,
	"condition" INTEGER,
	"condition_order" INTEGER,
	"remark" VARCHAR,
	"create_time" DATETIME,
	"update_time" TIMESTAMP
);

CREATE TABLE "tb_merge_tag" (
	"id" BIGINT,
	"name" VARCHAR,
	"condition" VARCHAR,
	"intro" VARCHAR,
	"purpose" VARCHAR,
	"remark" VARCHAR,
	"create_time" DATETIME,
	"update_time" TIMESTAMP,
	"state" INTEGER
);

CREATE TABLE "tb_basic_tag" (
	"id" BIGINT,
	"name" VARCHAR,
	"industry" VARCHAR,
	"rule" VARCHAR,
	"business" VARCHAR,
	"level" INTEGER,
	"pid" BIGINT,
	"order" INTEGER,
	"create_time" DATETIME,
	"update_time" TIMESTAMP,
	"state" INTEGER,
	"remark" VARCHAR
);
