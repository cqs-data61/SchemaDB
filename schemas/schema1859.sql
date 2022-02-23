DROP DATABASE IF EXISTS "schema1859";
CREATE DATABASE "schema1859";
USE "schema1859";
CREATE TABLE "undo_log" (
	"branch_id" BIGINT,
	"xid" VARCHAR,
	"context" VARCHAR,
	"rollback_info" LONGBLOB,
	"log_status" INT,
	"log_created" DATETIME,
	"log_modified" DATETIME
);

CREATE TABLE "lock_table" (
	"row_key" VARCHAR,
	"xid" VARCHAR,
	"transaction_id" BIGINT,
	"branch_id" BIGINT,
	"resource_id" VARCHAR,
	"table_name" VARCHAR,
	"pk" VARCHAR,
	"gmt_create" DATETIME,
	"gmt_modified" DATETIME,
	 PRIMARY KEY ("row_key")
);

CREATE TABLE "branch_table" (
	"branch_id" BIGINT,
	"xid" VARCHAR,
	"transaction_id" BIGINT,
	"resource_group_id" VARCHAR,
	"resource_id" VARCHAR,
	"branch_type" VARCHAR,
	"status" TINYINT,
	"client_id" VARCHAR,
	"application_data" VARCHAR,
	"gmt_create" DATETIME,
	"gmt_modified" DATETIME,
	 PRIMARY KEY ("branch_id")
);

CREATE TABLE "global_table" (
	"xid" VARCHAR,
	"transaction_id" BIGINT,
	"status" TINYINT,
	"application_id" VARCHAR,
	"transaction_service_group" VARCHAR,
	"transaction_name" VARCHAR,
	"timeout" INT,
	"begin_time" BIGINT,
	"application_data" VARCHAR,
	"gmt_create" DATETIME,
	"gmt_modified" DATETIME,
	 PRIMARY KEY ("xid")
);
