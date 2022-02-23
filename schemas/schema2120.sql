DROP DATABASE IF EXISTS "schema2120";
CREATE DATABASE "schema2120";
USE "schema2120";
CREATE TABLE "undo_log" (
	"id" BIGINT,
	"branch_id" BIGINT,
	"xid" VARCHAR,
	"context" VARCHAR,
	"rollback _info" LONGBLOB,
	"log_status" INT,
	"log_created" DATETIME,
	"log_modified" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "tbl_account" (
	"id" INT,
	"user_id " VARCHAR,
	"balance" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "tbl_repo" (
	"id" INT,
	"product_code" VARCHAR,
	"name" VARCHAR,
	"count" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "tbl_order" (
	"id" INT,
	"order_no" VARCHAR,
	"ser_id" VARCHAR,
	"product_code" VARCHAR,
	"count" INT,
	"amount" INT,
	 PRIMARY KEY ("id")
);
