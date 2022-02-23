DROP DATABASE IF EXISTS "schema1195";
CREATE DATABASE "schema1195";
USE "schema1195";
CREATE TABLE "resource" (
	"id" VARCHAR,
	"parent_id" VARCHAR,
	"title" VARCHAR,
	"name" VARCHAR,
	"url" VARCHAR,
	"component" VARCHAR,
	"resource_type" INT,
	"sort" INT,
	"icon" VARCHAR,
	"is_leaf" TINYINT,
	"is_route" INT,
	"perms" VARCHAR,
	"status" INT,
	"date_created" TIMESTAMP,
	"date_updated" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "permission" (
	"id" VARCHAR,
	"object_id" VARCHAR,
	"resource_id" VARCHAR,
	"date_created" TIMESTAMP,
	"date_updated" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "user_role" (
	"id" VARCHAR,
	"user_id" VARCHAR,
	"role_id" VARCHAR,
	"date_created" TIMESTAMP,
	"date_updated" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "role" (
	"id" VARCHAR,
	"role_name" VARCHAR,
	"description" VARCHAR,
	"date_created" TIMESTAMP,
	"date_updated" TIMESTAMP,
	 PRIMARY KEY ("id","role_name")
);

CREATE TABLE "soul_dict" (
	"id" VARCHAR,
	"type" VARCHAR,
	"dict_code" VARCHAR,
	"dict_name" VARCHAR,
	"dict_value" VARCHAR,
	"desc" VARCHAR,
	"sort" INT,
	"enabled" TINYINT,
	"date_created" TIMESTAMP,
	"date_updated" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "auth_path" (
	"id" VARCHAR,
	"auth_id" VARCHAR,
	"app_name" VARCHAR,
	"path" VARCHAR,
	"enabled" TINYINT,
	"date_created" TIMESTAMP,
	"date_updated" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "auth_param" (
	"id" VARCHAR,
	"auth_id" VARCHAR,
	"app_name" VARCHAR,
	"app_param" VARCHAR,
	"date_created" TIMESTAMP,
	"date_updated" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "app_auth" (
	"id" VARCHAR,
	"app_key" VARCHAR,
	"app_secret" VARCHAR,
	"user_id" VARCHAR,
	"phone" VARCHAR,
	"ext_info" VARCHAR,
	"open" TINYINT,
	"enabled" TINYINT,
	"date_created" TIMESTAMP,
	"date_updated" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "meta_data" (
	"id" VARCHAR,
	"app_name" VARCHAR,
	"path" VARCHAR,
	"path_desc" VARCHAR,
	"rpc_type" VARCHAR,
	"service_name" VARCHAR,
	"method_name" VARCHAR,
	"parameter_types" VARCHAR,
	"rpc_ext" VARCHAR,
	"date_created" TIMESTAMP,
	"date_updated" TIMESTAMP,
	"enabled" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "rule_condition" (
	"id" VARCHAR,
	"rule_id" VARCHAR,
	"param_type" VARCHAR,
	"operator" VARCHAR,
	"param_name" VARCHAR,
	"param_value" VARCHAR,
	"date_created" TIMESTAMP,
	"date_updated" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "rule" (
	"id" VARCHAR,
	"selector_id" VARCHAR,
	"match_mode" INT,
	"name" VARCHAR,
	"enabled" TINYINT,
	"loged" TINYINT,
	"sort" INT,
	"handle" VARCHAR,
	"date_created" TIMESTAMP,
	"date_updated" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "selector_condition" (
	"id" VARCHAR,
	"selector_id" VARCHAR,
	"param_type" VARCHAR,
	"operator" VARCHAR,
	"param_name" VARCHAR,
	"param_value" VARCHAR,
	"date_created" TIMESTAMP,
	"date_updated" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "selector" (
	"id" VARCHAR,
	"plugin_id" VARCHAR,
	"name" VARCHAR,
	"match_mode" INT,
	"type" INT,
	"sort" INT,
	"handle" VARCHAR,
	"enabled" TINYINT,
	"loged" TINYINT,
	"continued" TINYINT,
	"date_created" TIMESTAMP,
	"date_updated" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "plugin_handle" (
	"id" VARCHAR,
	"plugin_id" VARCHAR,
	"field" VARCHAR,
	"label" VARCHAR,
	"data_type" SMALLINT,
	"type" SMALLINT,
	"sort" INT,
	"ext_obj" VARCHAR,
	"date_created" TIMESTAMP,
	"date_updated" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "plugin" (
	"id" VARCHAR,
	"name" VARCHAR,
	"config" TEXT,
	"role" INT,
	"enabled" TINYINT,
	"date_created" TIMESTAMP,
	"date_updated" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "dashboard_user" (
	"id" VARCHAR,
	"user_name" VARCHAR,
	"password" VARCHAR,
	"role" INT,
	"enabled" TINYINT,
	"date_created" TIMESTAMP,
	"date_updated" TIMESTAMP,
	 PRIMARY KEY ("id")
);
