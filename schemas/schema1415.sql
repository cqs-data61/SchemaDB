DROP DATABASE IF EXISTS "schema1415";
CREATE DATABASE "schema1415";
USE "schema1415";
CREATE TABLE "key_number_generic_sequence" (
	"key_set_seq" INT,
	"next_val" BIGINT,
	"version" INT,
	 PRIMARY KEY ("key_set_seq")
);

CREATE TABLE "key_number_generic" (
	"key_set_seq" INT,
	"key_value" BIGINT,
	"reg_dt" TIMESTAMP,
	 PRIMARY KEY ("key_set_seq","key_value")
);

CREATE TABLE "key_number_mysql" (
	"key_set_seq" INT,
	"key_value" BIGINT,
	"reg_dt" TIMESTAMP,
	 PRIMARY KEY ("key_set_seq","key_value")
);

CREATE TABLE "key_string" (
	"key_set_seq" INT,
	"key_value" CHAR,
	"reg_dt" TIMESTAMP,
	 PRIMARY KEY ("key_set_seq","key_value")
);

CREATE TABLE "key_set" (
	"key_set_seq" INT,
	"key_id" VARCHAR,
	"description" VARCHAR,
	"key_type" VARCHAR,
	"key_generator" VARCHAR,
	"min_length" INT,
	"reg_dt" TIMESTAMP,
	"chg_dt" TIMESTAMP,
	 PRIMARY KEY ("key_set_seq")
);
