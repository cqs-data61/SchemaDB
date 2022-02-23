DROP DATABASE IF EXISTS "schema462";
CREATE DATABASE "schema462";
USE "schema462";
CREATE TABLE "cluster" (
	"id" INT,
	"name" VARCHAR,
	"yarn_url" VARCHAR,
	"default_file_cluster" BIT,
	"flink_proxy_user_enabled" BIT,
	"fs_default_fs" VARCHAR,
	"fs_webhdfs" VARCHAR,
	"fs_user" VARCHAR,
	"fs_dir" VARCHAR,
	"stream_black_node_list" VARCHAR,
	"batch_black_node_list" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "udf_flink_register" (
	"id" BIGINT,
	"function_name" VARCHAR,
	"class_name" VARCHAR,
	"jar_name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "auth_user_role" (
	"id" BIGINT,
	"username" VARCHAR,
	"role" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "auth_user" (
	"id" BIGINT,
	"username" VARCHAR,
	"password" VARCHAR,
	"nickname" VARCHAR,
	"enabled" BIT,
	"root" BIT,
	"level" INT,
	"email" VARCHAR,
	"phone" VARCHAR,
	"created" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "auth_role_resource" (
	"id" BIGINT,
	"role" VARCHAR,
	"resource" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "auth_role" (
	"id" BIGINT,
	"code" VARCHAR,
	"name" VARCHAR,
	"created" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "auth_resource" (
	"id" BIGINT,
	"code" VARCHAR,
	"name" VARCHAR,
	"url" VARCHAR,
	"parent_id" VARCHAR,
	"weight" INT,
	"icon" VARCHAR,
	"created" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "session" (
	"id" BIGINT,
	"session_id" VARCHAR,
	"username" VARCHAR,
	"session_type" INT,
	"execute_type" INT,
	"deleted" BIT,
	"create_time" TIMESTAMP,
	"modify_time" TIMESTAMP,
	 PRIMARY KEY ("id")
);
