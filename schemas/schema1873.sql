DROP DATABASE IF EXISTS "schema1873";
CREATE DATABASE "schema1873";
USE "schema1873";
CREATE TABLE "sys_user_role" (
	"user_id" BIGINT,
	"role_id" BIGINT,
	 PRIMARY KEY ("user_id","role_id")
);

CREATE TABLE "sys_user" (
	"id" BIGINT,
	"username" VARCHAR,
	"nickname" VARCHAR,
	"gender" TINYINT,
	"password" VARCHAR,
	"dept_id" INT,
	"deleted" TINYINT,
	"avatar" VARCHAR,
	"mobile" VARCHAR,
	"status" TINYINT,
	"email" VARCHAR,
	"gmt_create" DATETIME,
	"gmt_modified" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sys_role_permission" (
	"role_id" BIGINT,
	"permission_id" BIGINT
);

CREATE TABLE "sys_role_menu" (
	"role_id" BIGINT,
	"menu_id" BIGINT
);

CREATE TABLE "sys_role" (
	"id" BIGINT,
	"name" VARCHAR,
	"sort" INT,
	"status" TINYINT,
	"deleted" TINYINT,
	"gmt_create" DATETIME,
	"gmt_modified" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sys_permission" (
	"id" BIGINT,
	"name" VARCHAR,
	"perm" VARCHAR,
	"method" VARCHAR,
	"type" TINYINT,
	"module_id" BIGINT,
	"gmt_create" DATETIME,
	"gmt_modified" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sys_menu" (
	"id" BIGINT,
	"name" VARCHAR,
	"parent_id" BIGINT,
	"path" VARCHAR,
	"component" VARCHAR,
	"redirect" VARCHAR,
	"icon" VARCHAR,
	"sort" INT,
	"visible" TINYINT,
	"gmt_create" DATETIME,
	"gmt_modified" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sys_dict_item" (
	"id" BIGINT,
	"name" VARCHAR,
	"value" VARCHAR,
	"dict_code" VARCHAR,
	"sort" INT,
	"status" TINYINT,
	"defaulted" TINYINT,
	"remark" VARCHAR,
	"gmt_create" DATETIME,
	"gmt_modified" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sys_dict" (
	"id" BIGINT,
	"name" VARCHAR,
	"code" VARCHAR,
	"status" TINYINT,
	"remark" VARCHAR,
	"gmt_create" DATETIME,
	"gmt_modified" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sys_dept" (
	"id" BIGINT,
	"name" VARCHAR,
	"parent_id" INT,
	"tree_path" VARCHAR,
	"sort" INT,
	"leader" VARCHAR,
	"mobile" VARCHAR,
	"email" VARCHAR,
	"status" TINYINT,
	"deleted" TINYINT,
	"gmt_create" DATETIME,
	"gmt_modified" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "oauth_client_details" (
	"client_id" VARCHAR,
	"resource_ids" VARCHAR,
	"client_secret" VARCHAR,
	"scope" VARCHAR,
	"authorized_grant_types" VARCHAR,
	"web_server_redirect_uri" VARCHAR,
	"authorities" VARCHAR,
	"access_token_validity" INT,
	"refresh_token_validity" INT,
	"additional_information" VARCHAR,
	"autoapprove" VARCHAR,
	 PRIMARY KEY ("client_id")
);
